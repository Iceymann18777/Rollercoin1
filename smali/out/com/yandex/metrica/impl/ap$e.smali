.class Lcom/yandex/metrica/impl/ap$e;
.super Lcom/yandex/metrica/impl/ap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 641
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .line 645
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$e;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b()[B
    .registers 2

    .line 650
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$e;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 651
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 653
    :cond_b
    invoke-super {p0}, Lcom/yandex/metrica/impl/ap$b;->b()[B

    move-result-object v0

    return-object v0
.end method
