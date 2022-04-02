.class public Lcom/tappx/a/i6;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Lcom/tappx/a/d6;


# direct methods
.method public constructor <init>(Lcom/tappx/a/d6;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/i6;->a:Lcom/tappx/a/d6;

    const/16 v0, 0x100

    .line 3
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tappx/a/d6;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
.end method

.method private a(I)V
    .registers 5

    .line 1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length p1, p1

    if-gt v0, p1, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object p1, p0, Lcom/tappx/a/i6;->a:Lcom/tappx/a/d6;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tappx/a/d6;->a(I)[B

    move-result-object p1

    .line 5
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Lcom/tappx/a/i6;->a:Lcom/tappx/a/d6;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/tappx/a/d6;->a([B)V

    .line 7
    iput-object p1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i6;->a:Lcom/tappx/a/d6;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/tappx/a/d6;->a([B)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 3
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public finalize()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/a/i6;->a:Lcom/tappx/a/d6;

    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-virtual {v0, v1}, Lcom/tappx/a/d6;->a([B)V

    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-direct {p0, v0}, Lcom/tappx/a/i6;->a(I)V

    .line 4
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0, p3}, Lcom/tappx/a/i6;->a(I)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
