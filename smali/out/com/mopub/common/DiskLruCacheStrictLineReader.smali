.class Lcom/mopub/common/DiskLruCacheStrictLineReader;
.super Ljava/lang/Object;
.source "DiskLruCacheStrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p3, :cond_2a

    if-ltz p2, :cond_22

    .line 93
    sget-object v0, Lcom/mopub/common/DiskLruCacheUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 97
    iput-object p1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->in:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 99
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    return-void

    .line 94
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported encoding"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    const/4 p1, 0x0

    .line 88
    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x2000

    .line 72
    invoke-direct {p0, p1, v0, p2}, Lcom/mopub/common/DiskLruCacheStrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/DiskLruCacheStrictLineReader;)Ljava/nio/charset/Charset;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 188
    iput v3, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    .line 189
    iput v0, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    return-void

    .line 186
    :cond_12
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-object v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    .line 112
    iget-object v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    if-eqz v1, :cond_8f

    .line 134
    iget v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    iget v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    if-lt v1, v2, :cond_10

    .line 135
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->fillBuf()V

    .line 138
    :cond_10
    iget v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    :goto_12
    iget v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_49

    .line 139
    iget-object v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_46

    .line 140
    iget v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    if-eq v1, v2, :cond_2d

    iget-object v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v1

    .line 141
    :goto_2e
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    iget v5, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    iget v6, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 142
    iput v1, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    .line 143
    monitor-exit v0

    return-object v2

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 148
    :cond_49
    new-instance v1, Lcom/mopub/common/DiskLruCacheStrictLineReader$1;

    iget v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    iget v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/mopub/common/DiskLruCacheStrictLineReader$1;-><init>(Lcom/mopub/common/DiskLruCacheStrictLineReader;I)V

    .line 161
    :cond_55
    iget-object v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    iget v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    iget v5, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    iget v6, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 163
    iput v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    .line 164
    invoke-direct {p0}, Lcom/mopub/common/DiskLruCacheStrictLineReader;->fillBuf()V

    .line 166
    iget v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    :goto_69
    iget v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->end:I

    if-eq v2, v4, :cond_55

    .line 167
    iget-object v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_8c

    .line 168
    iget v3, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    if-eq v2, v3, :cond_82

    .line 169
    iget-object v3, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->buf:[B

    iget v4, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    iget v5, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_82
    add-int/lit8 v2, v2, 0x1

    .line 171
    iput v2, p0, Lcom/mopub/common/DiskLruCacheStrictLineReader;->pos:I

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 128
    :cond_8f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_97
    move-exception v1

    .line 176
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    goto :goto_9b

    :goto_9a
    throw v1

    :goto_9b
    goto :goto_9a
.end method
