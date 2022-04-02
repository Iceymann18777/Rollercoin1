.class public Lcom/yandex/metrica/impl/j;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/j$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/impl/j$a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ba;Lcom/yandex/metrica/impl/bg$a;)V
    .registers 7

    if-eqz p0, :cond_5f

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UuId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->A()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdUrlGet"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdUrlReport"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/yandex/metrica/impl/utils/m;->a()J

    move-result-wide v1

    const-string v3, "ServerTimeOffset"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ba;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/l;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Clids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/bg$a;->l()Lcom/yandex/metrica/impl/ob/dt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dt;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CookieBrowsers"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/yandex/metrica/impl/bg$a;->m()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BindIdUrl"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5f
    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lcom/yandex/metrica/impl/ob/du;)V
    .registers 4

    if-eqz p0, :cond_f

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    .line 83
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/du;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_f
    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/j$a;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/yandex/metrica/impl/j;->a:Lcom/yandex/metrica/impl/j$a;

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/j;->a:Lcom/yandex/metrica/impl/j$a;

    if-eqz v0, :cond_7

    .line 60
    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/j$a;->a(ILandroid/os/Bundle;)V

    :cond_7
    return-void
.end method
