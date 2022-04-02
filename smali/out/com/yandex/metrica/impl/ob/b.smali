.class public final Lcom/yandex/metrica/impl/ob/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/b$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    .line 58
    iput p2, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    add-int/2addr p2, p3

    .line 59
    iput p2, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    return-void
.end method

.method public static a([BII)Lcom/yandex/metrica/impl/ob/b;
    .registers 4

    .line 81
    new-instance v0, Lcom/yandex/metrica/impl/ob/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;-><init>([BII)V

    return-object v0
.end method

.method public static b(ILcom/yandex/metrica/impl/ob/d;)I
    .registers 2

    .line 443
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Lcom/yandex/metrica/impl/ob/d;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 2

    .line 425
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(I[B)I
    .registers 3

    .line 452
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    .line 1637
    array-length v0, p1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v0

    array-length p1, p1

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static b(Lcom/yandex/metrica/impl/ob/d;)I
    .registers 2

    .line 628
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/d;->b()I

    move-result p0

    .line 629
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 607
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 608
    array-length v0, p0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result v0

    array-length p0, p0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, p0

    return v0

    .line 611
    :catch_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(IJ)I
    .registers 3

    .line 373
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    .line 1553
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/b;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(I)I
    .registers 1

    .line 357
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static d(II)I
    .registers 2

    .line 389
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    if-ltz p1, :cond_b

    .line 1570
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result p1

    goto :goto_d

    :cond_b
    const/16 p1, 0xa

    :goto_d
    add-int/2addr p0, p1

    return p0
.end method

.method public static d(IJ)I
    .registers 3

    .line 381
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    .line 1561
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/b;->d(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(J)I
    .registers 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static e(I)I
    .registers 1

    .line 416
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static e(II)I
    .registers 2

    .line 460
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    .line 1645
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(II)I
    .registers 2

    .line 495
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result p0

    .line 1677
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->j(I)I

    move-result p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(I)I
    .registers 2

    const/4 v0, 0x0

    .line 767
    invoke-static {p0, v0}, Lcom/yandex/metrica/impl/ob/f;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/b;->i(I)I

    move-result p0

    return p0
.end method

.method public static i(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static j(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 695
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    if-eq v0, v1, :cond_f

    .line 733
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    aput-byte p1, v1, v0

    return-void

    .line 730
    :cond_f
    new-instance p1, Lcom/yandex/metrica/impl/ob/b$a;

    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    invoke-direct {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b$a;-><init>(II)V

    throw p1
.end method

.method public a(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;->e(J)V

    return-void
.end method

.method public a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 267
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    return-void
.end method

.method public a(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 90
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->a(D)V

    return-void
.end method

.method public a(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 104
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->a(J)V

    return-void
.end method

.method public a(ILcom/yandex/metrica/impl/ob/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 161
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Lcom/yandex/metrica/impl/ob/d;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 139
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a(Z)V

    return-void
.end method

.method public a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->a([B)V

    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/impl/ob/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 307
    invoke-virtual {p1, p0}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 295
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->b([B)V

    return-void
.end method

.method public a(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    return-void
.end method

.method public a([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    .line 313
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->b([B)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 706
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/b;->a()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 707
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    return-void
.end method

.method public b(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 175
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->b(I)V

    return-void
.end method

.method public b(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 111
    invoke-virtual {p0, p2, p3}, Lcom/yandex/metrica/impl/ob/b;->b(J)V

    return-void
.end method

.method public b(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/b;->c(J)V

    return-void
.end method

.method public b([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b([BII)V

    return-void
.end method

.method public b([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    iget v0, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    iget v1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_12

    .line 751
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/b;->a:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    iget p1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    return-void

    .line 755
    :cond_12
    new-instance p1, Lcom/yandex/metrica/impl/ob/b$a;

    iget p2, p0, Lcom/yandex/metrica/impl/ob/b;->c:I

    iget p3, p0, Lcom/yandex/metrica/impl/ob/b;->b:I

    invoke-direct {p1, p2, p3}, Lcom/yandex/metrica/impl/ob/b$a;-><init>(II)V

    throw p1
.end method

.method public c(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/b;->j(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    return-void
.end method

.method public c(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/b;->g(II)V

    .line 206
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->c(I)V

    return-void
.end method

.method public c(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    long-to-int p2, p1

    .line 803
    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 806
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public e(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 838
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 839
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 840
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 841
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 842
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 843
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 844
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 845
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    return-void
.end method

.method public f(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 738
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->a(B)V

    return-void
.end method

.method public g(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/f;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->h(I)V

    return-void
.end method

.method public h(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 777
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 780
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/b;->f(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
