.class public final Lcom/yandex/metrica/c$a$d$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$a$f;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 715
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 716
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$d$b;->d()Lcom/yandex/metrica/c$a$d$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/yandex/metrica/c$a$d$b;->b:Lcom/yandex/metrica/c$a$f;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 731
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    :cond_8
    const/4 v0, 0x2

    .line 733
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 734
    iget v0, p0, Lcom/yandex/metrica/c$a$d$b;->d:I

    if-eqz v0, :cond_16

    const/4 v1, 0x5

    .line 735
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 737
    :cond_16
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method protected c()I
    .registers 4

    .line 742
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 743
    iget-object v1, p0, Lcom/yandex/metrica/c$a$d$b;->b:Lcom/yandex/metrica/c$a$f;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 745
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    const/4 v1, 0x2

    .line 747
    iget-object v2, p0, Lcom/yandex/metrica/c$a$d$b;->c:Ljava/lang/String;

    .line 748
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 749
    iget v1, p0, Lcom/yandex/metrica/c$a$d$b;->d:I

    if-eqz v1, :cond_20

    const/4 v2, 0x5

    .line 751
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$d$b;
    .registers 2

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$b;->b:Lcom/yandex/metrica/c$a$f;

    const-string v0, ""

    .line 721
    iput-object v0, p0, Lcom/yandex/metrica/c$a$d$b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 722
    iput v0, p0, Lcom/yandex/metrica/c$a$d$b;->d:I

    const/4 v0, -0x1

    .line 723
    iput v0, p0, Lcom/yandex/metrica/c$a$d$b;->a:I

    return-object p0
.end method
