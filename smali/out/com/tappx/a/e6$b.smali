.class Lcom/tappx/a/e6$b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/e6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private b:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    iput-wide p2, p0, Lcom/tappx/a/e6$b;->a:J

    return-void
.end method


# virtual methods
.method a()J
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/tappx/a/e6$b;->a:J

    iget-wide v2, p0, Lcom/tappx/a/e6$b;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .registers 6

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 3
    iget-wide v1, p0, Lcom/tappx/a/e6$b;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tappx/a/e6$b;->b:J

    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6

    .line 4
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_d

    .line 6
    iget-wide p2, p0, Lcom/tappx/a/e6$b;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tappx/a/e6$b;->b:J

    :cond_d
    return p1
.end method
