.class Lcom/yandex/metrica/MetricaService$2;
.super Lcom/yandex/metrica/IMetricaService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/MetricaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/MetricaService;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/MetricaService;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/yandex/metrica/MetricaService$2;->a:Lcom/yandex/metrica/MetricaService;

    invoke-direct {p0}, Lcom/yandex/metrica/IMetricaService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportData(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$2;->a:Lcom/yandex/metrica/MetricaService;

    invoke-static {v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;)Lcom/yandex/metrica/impl/ae;

    move-result-object v0

    invoke-static {}, Lcom/yandex/metrica/MetricaService$2;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/yandex/metrica/impl/ae;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$2;->a:Lcom/yandex/metrica/MetricaService;

    invoke-static {v0}, Lcom/yandex/metrica/MetricaService;->a(Lcom/yandex/metrica/MetricaService;)Lcom/yandex/metrica/impl/ae;

    move-result-object v1

    invoke-static {}, Lcom/yandex/metrica/MetricaService$2;->getCallingUid()I

    move-result v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/yandex/metrica/impl/ae;->a(ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
