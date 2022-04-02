.class Lcom/yandex/metrica/impl/ap$g;
.super Lcom/yandex/metrica/impl/ap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 685
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$g;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
