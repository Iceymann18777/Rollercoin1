.class public final Lcom/yandex/metrica/c$a$f;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public b:J

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f;->d()Lcom/yandex/metrica/c$a$f;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$f;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 64
    iget v0, p0, Lcom/yandex/metrica/c$a$f;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->c(II)V

    .line 65
    iget-wide v0, p0, Lcom/yandex/metrica/c$a$f;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    const/4 v2, 0x3

    .line 66
    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->b(IJ)V

    .line 68
    :cond_18
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 7

    .line 73
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 74
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$f;->b:J

    const/4 v3, 0x1

    .line 75
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    iget v1, p0, Lcom/yandex/metrica/c$a$f;->c:I

    const/4 v2, 0x2

    .line 77
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    iget-wide v1, p0, Lcom/yandex/metrica/c$a$f;->d:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_22

    const/4 v3, 0x3

    .line 80
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$f;
    .registers 4

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$f;->b:J

    const/4 v2, 0x0

    .line 54
    iput v2, p0, Lcom/yandex/metrica/c$a$f;->c:I

    .line 55
    iput-wide v0, p0, Lcom/yandex/metrica/c$a$f;->d:J

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/yandex/metrica/c$a$f;->a:I

    return-object p0
.end method
