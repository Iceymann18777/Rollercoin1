.class Lcom/yandex/metrica/impl/ap$c;
.super Lcom/yandex/metrica/impl/ap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 633
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/Integer;
    .registers 2

    .line 637
    iget-object v0, p0, Lcom/yandex/metrica/impl/ap$c;->i:Ljava/lang/Integer;

    return-object v0
.end method
