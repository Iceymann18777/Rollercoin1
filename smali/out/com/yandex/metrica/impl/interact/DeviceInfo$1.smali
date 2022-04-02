.class Lcom/yandex/metrica/impl/interact/DeviceInfo$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/interact/DeviceInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {}, Lcom/yandex/metrica/impl/am$a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Superuser.apk"

    .line 63
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_e
    invoke-static {}, Lcom/yandex/metrica/impl/am$a;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "su.so"

    .line 66
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/interact/DeviceInfo$1;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method
