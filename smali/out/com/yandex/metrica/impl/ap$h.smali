.class Lcom/yandex/metrica/impl/ap$h;
.super Lcom/yandex/metrica/impl/ap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 676
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()[B
    .registers 2

    .line 680
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
