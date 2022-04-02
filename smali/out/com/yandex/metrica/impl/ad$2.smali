.class Lcom/yandex/metrica/impl/ad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ad;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ad;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 115
    iget-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {p2}, Lcom/yandex/metrica/IMetricaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yandex/metrica/IMetricaService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 116
    iget-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ad;->b(Lcom/yandex/metrica/impl/ad;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 123
    iget-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ad;->a(Lcom/yandex/metrica/impl/ad;Lcom/yandex/metrica/IMetricaService;)Lcom/yandex/metrica/IMetricaService;

    .line 124
    iget-object p1, p0, Lcom/yandex/metrica/impl/ad$2;->a:Lcom/yandex/metrica/impl/ad;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ad;->c(Lcom/yandex/metrica/impl/ad;)V

    return-void
.end method
