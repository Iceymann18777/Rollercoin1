.class public Lcom/tappx/a/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/h5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/e6$b;,
        Lcom/tappx/a/e6$a;,
        Lcom/tappx/a/e6$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tappx/a/e6$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Lcom/tappx/a/e6$c;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/tappx/a/e6$c;)V
    .registers 3

    const/high16 v0, 0x500000

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/tappx/a/e6;-><init>(Lcom/tappx/a/e6$c;I)V

    return-void
.end method

.method public constructor <init>(Lcom/tappx/a/e6$c;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/tappx/a/e6;->b:J

    .line 50
    iput-object p1, p0, Lcom/tappx/a/e6;->c:Lcom/tappx/a/e6$c;

    .line 51
    iput p2, p0, Lcom/tappx/a/e6;->d:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;)I
    .registers 2

    .line 118
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    return p0

    .line 120
    :cond_8
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static a(Lcom/tappx/a/e6$b;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tappx/a/e6$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Ljava/io/InputStream;)I

    move-result v0

    if-ltz v0, :cond_31

    if-nez v0, :cond_d

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_12

    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_30

    .line 150
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Lcom/tappx/a/e6$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {p0}, Lcom/tappx/a/e6;->b(Lcom/tappx/a/e6$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 152
    new-instance v5, Lcom/tappx/a/m5;

    invoke-direct {v5, v3, v4}, Lcom/tappx/a/m5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_30
    return-object v1

    .line 153
    :cond_31
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readHeaderList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw p0

    :goto_49
    goto :goto_48
.end method

.method static a(Ljava/io/OutputStream;I)V
    .registers 3

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 121
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 124
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .registers 5

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 126
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 132
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    const-string v0, "UTF-8"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 134
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;J)V

    .line 135
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/tappx/a/e6$a;)V
    .registers 10

    .line 102
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 103
    iget-wide v0, p0, Lcom/tappx/a/e6;->b:J

    iget-wide v2, p2, Lcom/tappx/a/e6$a;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tappx/a/e6;->b:J

    goto :goto_22

    .line 105
    :cond_10
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/e6$a;

    .line 106
    iget-wide v1, p0, Lcom/tappx/a/e6;->b:J

    iget-wide v3, p2, Lcom/tappx/a/e6$a;->a:J

    iget-wide v5, v0, Lcom/tappx/a/e6$a;->a:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tappx/a/e6;->b:J

    .line 108
    :goto_22
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/util/List;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tappx/a/m5;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_28

    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;I)V

    .line 137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/m5;

    .line 138
    invoke-virtual {v0}, Lcom/tappx/a/m5;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lcom/tappx/a/m5;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_d

    :cond_28
    const/4 p0, 0x0

    .line 142
    invoke-static {p1, p0}, Lcom/tappx/a/e6;->a(Ljava/io/OutputStream;I)V

    :cond_2c
    return-void
.end method

.method static a(Lcom/tappx/a/e6$b;J)[B
    .registers 9

    .line 109
    invoke-virtual {p0}, Lcom/tappx/a/e6$b;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1f

    long-to-int v2, p1

    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-nez v5, :cond_1f

    .line 114
    new-array p1, v2, [B

    .line 115
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 116
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "streamToBytes length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/io/InputStream;)I
    .registers 3

    .line 8
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    .line 9
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 10
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 11
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static b(Lcom/tappx/a/e6$b;)Ljava/lang/String;
    .registers 3

    .line 12
    invoke-static {p0}, Lcom/tappx/a/e6;->c(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 13
    invoke-static {p0, v0, v1}, Lcom/tappx/a/e6;->a(Lcom/tappx/a/e6$b;J)[B

    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private b()V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/tappx/a/e6;->c:Lcom/tappx/a/e6$c;

    invoke-interface {v0}, Lcom/tappx/a/e6$c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-initializing cache after external clearing."

    .line 3
    invoke-static {v1, v0}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/tappx/a/e6;->b:J

    .line 6
    invoke-virtual {p0}, Lcom/tappx/a/e6;->a()V

    :cond_20
    return-void
.end method

.method static c(Ljava/io/InputStream;)J
    .registers 8

    .line 47
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shl-long/2addr v0, v4

    const-wide/16 v4, 0x0

    or-long/2addr v0, v4

    .line 48
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 49
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 50
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 51
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 52
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 53
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 54
    invoke-static {p0}, Lcom/tappx/a/e6;->a(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x38

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c()V
    .registers 15

    .line 8
    iget-wide v0, p0, Lcom/tappx/a/e6;->b:J

    iget v2, p0, Lcom/tappx/a/e6;->d:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    return-void

    .line 11
    :cond_a
    sget-boolean v0, Lcom/tappx/a/a6;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Pruning old cache entries."

    .line 12
    invoke-static {v2, v0}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :cond_16
    iget-wide v2, p0, Lcom/tappx/a/e6;->b:J

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 19
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    .line 20
    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_74

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tappx/a/e6$a;

    .line 23
    iget-object v10, v7, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/tappx/a/e6;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 25
    iget-wide v10, p0, Lcom/tappx/a/e6;->b:J

    iget-wide v12, v7, Lcom/tappx/a/e6$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, p0, Lcom/tappx/a/e6;->b:J

    goto :goto_60

    :cond_4f
    new-array v10, v8, [Ljava/lang/Object;

    .line 27
    iget-object v7, v7, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    aput-object v7, v10, v1

    .line 29
    invoke-direct {p0, v7}, Lcom/tappx/a/e6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v9

    const-string v7, "Could not delete cache entry for key=%s, filename=%s"

    .line 30
    invoke-static {v7, v10}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    .line 37
    iget-wide v10, p0, Lcom/tappx/a/e6;->b:J

    long-to-float v7, v10

    iget v10, p0, Lcom/tappx/a/e6;->d:I

    int-to-float v10, v10

    const v11, 0x3f666666    # 0.9f

    mul-float v10, v10, v11

    cmpg-float v7, v7, v10

    if-gez v7, :cond_27

    .line 42
    :cond_74
    sget-boolean v0, Lcom/tappx/a/a6;->b:Z

    if-eqz v0, :cond_9a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    iget-wide v6, p0, Lcom/tappx/a/e6;->b:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "pruned %d files, %d bytes, %d ms"

    .line 46
    invoke-static {v1, v0}, Lcom/tappx/a/a6;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9a
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tappx/a/e6$a;

    if-eqz p1, :cond_11

    .line 3
    iget-wide v0, p0, Lcom/tappx/a/e6;->b:J

    iget-wide v2, p1, Lcom/tappx/a/e6$a;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tappx/a/e6;->b:J

    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/tappx/a/h5$a;
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/tappx/a/e6;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tappx/a/e6$a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7e

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    .line 6
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/tappx/a/e6;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_7e

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 8
    :try_start_15
    new-instance v6, Lcom/tappx/a/e6$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 10
    invoke-virtual {p0, v2}, Lcom/tappx/a/e6;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/tappx/a/e6$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_65
    .catchall {:try_start_15 .. :try_end_27} :catchall_7e

    .line 12
    :try_start_27
    invoke-static {v6}, Lcom/tappx/a/e6$a;->a(Lcom/tappx/a/e6$b;)Lcom/tappx/a/e6$a;

    move-result-object v7

    .line 13
    iget-object v8, v7, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_60

    if-nez v8, :cond_4f

    :try_start_33
    const-string v0, "%s: key=%s, found=%s"
    :try_end_35
    .catchall {:try_start_33 .. :try_end_35} :catchall_7e

    const/4 v8, 0x3

    :try_start_36
    new-array v8, v8, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    aput-object p1, v8, v3

    iget-object v7, v7, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    aput-object v7, v8, v5

    .line 17
    invoke-static {v0, v8}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/tappx/a/e6;->e(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_36 .. :try_end_4a} :catchall_60

    .line 28
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_65
    .catchall {:try_start_4a .. :try_end_4d} :catchall_7e

    monitor-exit p0

    return-object v1

    .line 29
    :cond_4f
    :try_start_4f
    invoke-virtual {v6}, Lcom/tappx/a/e6$b;->a()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/tappx/a/e6;->a(Lcom/tappx/a/e6$b;J)[B

    move-result-object v7

    .line 30
    invoke-virtual {v0, v7}, Lcom/tappx/a/e6$a;->a([B)Lcom/tappx/a/h5$a;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_4f .. :try_end_5b} :catchall_60

    .line 34
    :try_start_5b
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_65
    .catchall {:try_start_5b .. :try_end_5e} :catchall_7e

    monitor-exit p0

    return-object v0

    :catchall_60
    move-exception v0

    :try_start_61
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 35
    throw v0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_7e

    :catch_65
    move-exception v0

    :try_start_66
    new-array v5, v5, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%s: %s"

    invoke-static {v0, v5}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/tappx/a/e6;->c(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_7e

    monitor-exit p0

    return-object v1

    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/io/File;)Ljava/io/InputStream;
    .registers 3

    .line 117
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 10

    monitor-enter p0

    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/tappx/a/e6;->c:Lcom/tappx/a/e6$c;

    invoke-interface {v0}, Lcom/tappx/a/e6$c;->a()Ljava/io/File;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_22

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Unable to create cache dir %s"

    invoke-static {v0, v1}, Lcom/tappx/a/a6;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_5f

    :cond_22
    monitor-exit p0

    return-void

    .line 46
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_5f

    if-nez v0, :cond_2c

    monitor-exit p0

    return-void

    .line 50
    :cond_2c
    :try_start_2c
    array-length v1, v0

    :goto_2d
    if-ge v2, v1, :cond_5d

    aget-object v3, v0, v2
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_5f

    .line 52
    :try_start_31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 53
    new-instance v6, Lcom/tappx/a/e6$b;

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 55
    invoke-virtual {p0, v3}, Lcom/tappx/a/e6;->a(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7, v4, v5}, Lcom/tappx/a/e6$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_43} :catch_57
    .catchall {:try_start_31 .. :try_end_43} :catchall_5f

    .line 57
    :try_start_43
    invoke-static {v6}, Lcom/tappx/a/e6$a;->a(Lcom/tappx/a/e6$b;)Lcom/tappx/a/e6$a;

    move-result-object v7

    .line 58
    iput-wide v4, v7, Lcom/tappx/a/e6$a;->a:J

    .line 59
    iget-object v4, v7, Lcom/tappx/a/e6$a;->b:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/tappx/a/e6;->a(Ljava/lang/String;Lcom/tappx/a/e6$a;)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_52

    .line 63
    :try_start_4e
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    goto :goto_5a

    :catchall_52
    move-exception v4

    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V

    .line 64
    throw v4
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_57} :catch_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5f

    .line 67
    :catch_57
    :try_start_57
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5f

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_5d
    monitor-exit p0

    return-void

    :catchall_5f
    move-exception v0

    monitor-exit p0

    goto :goto_63

    :goto_62
    throw v0

    :goto_63
    goto :goto_62
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/tappx/a/h5$a;)V
    .registers 10

    monitor-enter p0

    .line 68
    :try_start_1
    iget-wide v0, p0, Lcom/tappx/a/e6;->b:J

    iget-object v2, p2, Lcom/tappx/a/h5$a;->a:[B

    array-length v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget v3, p0, Lcom/tappx/a/e6;->d:I

    int-to-long v4, v3

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    array-length v0, v2
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_7a

    int-to-float v0, v0

    int-to-float v1, v3

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    monitor-exit p0

    return-void

    .line 72
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/tappx/a/e6;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_7a

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    :try_start_23
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, v0}, Lcom/tappx/a/e6;->b(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    new-instance v4, Lcom/tappx/a/e6$a;

    invoke-direct {v4, p1, p2}, Lcom/tappx/a/e6$a;-><init>(Ljava/lang/String;Lcom/tappx/a/h5$a;)V

    .line 76
    invoke-virtual {v4, v3}, Lcom/tappx/a/e6$a;->a(Ljava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 82
    iget-object p2, p2, Lcom/tappx/a/h5$a;->a:[B

    invoke-virtual {v3, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 83
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tappx/a/e6$a;->a:J

    .line 85
    invoke-direct {p0, p1, v4}, Lcom/tappx/a/e6;->a(Ljava/lang/String;Lcom/tappx/a/e6$a;)V

    .line 86
    invoke-direct {p0}, Lcom/tappx/a/e6;->c()V

    goto :goto_78

    .line 87
    :cond_4c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4f} :catch_62
    .catchall {:try_start_23 .. :try_end_4f} :catchall_7a

    :try_start_4f
    const-string p1, "Failed to write header for %s"
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_7a

    :try_start_51
    new-array p2, v2, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    invoke-static {p1, p2}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_62} :catch_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_7a

    .line 97
    :catch_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_75

    new-array p1, v2, [Ljava/lang/Object;

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Could not clean up file %s"

    invoke-static {p2, p1}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_75
    invoke-direct {p0}, Lcom/tappx/a/e6;->b()V
    :try_end_78
    .catchall {:try_start_62 .. :try_end_78} :catchall_7a

    :goto_78
    monitor-exit p0

    return-void

    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tappx/a/e6;->c:Lcom/tappx/a/e6$c;

    invoke-interface {v1}, Lcom/tappx/a/e6$c;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/tappx/a/e6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method b(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 3

    .line 7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/tappx/a/e6;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/e6;->e(Ljava/lang/String;)V

    if-nez v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 6
    invoke-direct {p0, p1}, Lcom/tappx/a/e6;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Could not delete cache entry for key=%s, filename=%s"

    .line 7
    invoke-static {p1, v0}, Lcom/tappx/a/a6;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
