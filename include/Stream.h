#ifndef _STREAM_H
#define _STREAM_H

#include "types.h"
#include <mem.h>

struct String;

/**
 * @brief TODO
 *
 * Size: 0x8.
 */
struct Stream {
	Stream() { }

	// _04 = VTBL
	immut char* mPath; // _00

	int readInt();
	u8 readByte();
	s16 readShort();
	f32 readFloat();
	void readString(char*, int);
	void readString(String&);
	char* readString();
	void writeInt(int);
	void writeByte(u8);
	void writeShort(s16);
	void writeFloat(f32);
	void writeString(immut char*);
	void writeString(immut String&);

	virtual void read(void*, int);
	virtual void write(immut void*, int);
	virtual int getPending();
	virtual int getAvailable();
	virtual void close();
	virtual bool getClosing() { return false; }
	virtual void flush() { }

	void print(immut char*, ...);
};

/**
 * @brief TODO
 */
struct RandomAccessStream : public Stream {
	virtual int getPosition() { return 0; }                          // _58 (weak)
	virtual int getPending() { return getLength() - getPosition(); } // _44 (weak)
	virtual void setPosition(int) { }                                // _5C (weak)
	virtual int getLength() { return getAvailable(); }               // _60 (weak)

	void skipPadding(u32 paddingAmount)
	{
		int length       = getPosition();
		int resultAmount = (~(paddingAmount - 1) & (length + paddingAmount - 1)) - length;

		for (int i = 0; i < resultAmount; i++) {
			readByte();
		}
	}

	void padFile(u32 paddingAmount)
	{
		int length       = getPosition();
		int resultAmount = (~(paddingAmount - 1) & (length + paddingAmount - 1)) - length;
		for (int i = 0; i < resultAmount; i++) {
			writeByte(0);
		}
	}

	void padFileTo(u32 paddingAmount, u32 offset)
	{
		int pos          = getPosition();
		int resultAmount = paddingAmount - pos - offset;
		for (int i = 0; i < resultAmount; i++) {
			writeByte(0);
		}
	}

	inline BOOL checkInput()
	{
		if (readByte() == 0) {
			return false;
		}
		return true;
	}

	// unused/inlined:
	void writeTo(int, void*, int);

	// _04     = VTBL
	// _00-_08 = Stream
};

/**
 * @brief TODO
 *
 * @note Size: 0x20.
 */
struct BufferedInputStream : public RandomAccessStream {
	BufferedInputStream()
	{
		mBuffer = nullptr;
		mStream = nullptr;
	}

	BufferedInputStream(Stream*, u8*, int);

	virtual void read(void*, int);                                         // _3C
	virtual int getPending() { return mStream->getPending() - mPosition; } // _44 (weak)
	virtual void close() { mStream->close(); }                             // _4C (weak)
	virtual int getPosition() { return mPosition; }                        // _58 (weak)

	void init(Stream*, u8*, int);
	void fillBuffer();

	// _04     = VTBL
	// _00-_08 = RandomAccessStream
	u8* mBuffer;           // _08
	int mBufferSize;       // _0C
	int mRemainingBytes;   // _10
	int mCurrentBufferPos; // _14
	int mPosition;         // _18
	Stream* mStream;       // _1C
};

/**
 * @brief TODO
 */
struct RamStream : public RandomAccessStream {
	inline RamStream(void* buffer, int size)
	{
		mBufferAddr = buffer;
		mPosition   = 0;
		mLength     = size;
	}

	virtual int getPending() { return mLength - mPosition; } // _44 (weak)
	virtual void setPosition(int pos) { mPosition = pos; }   // _5C (weak)
	virtual int getPosition() { return mPosition; }          // _58 (weak)
	virtual int getLength() { return mLength; }              // _60 (weak)
	virtual void setLength(int len) { mLength = len; }       // _64 (weak)
	virtual void read(void* dest, int size)                  // _3C (weak)
	{
		memcpy(dest, (const void*)((int)mBufferAddr + mPosition), size);
		mPosition += size;
	}
	virtual void write(immut void* src, int size) // _40 (weak)
	{
		memcpy((void*)((int)mBufferAddr + mPosition), src, size);
		mPosition += size;
	}

	// _04     = VTBL
	// _00-_08 = RandomAccessStream
	void* mBufferAddr; // _08
	int mPosition;     // _0C
	int mLength;       // _10
};

extern Stream* sysCon;
extern Stream* errCon;

#endif
