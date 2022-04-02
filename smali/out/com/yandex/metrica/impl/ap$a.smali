.class Lcom/yandex/metrica/impl/ap$a;
.super Lcom/yandex/metrica/impl/ap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 659
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ap$e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
