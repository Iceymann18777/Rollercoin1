.class public Lcom/yandex/metrica/MetricaService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/MetricaService$b;,
        Lcom/yandex/metrica/MetricaService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yandex/metrica/MetricaService$b;

.field private b:Lcom/yandex/metrica/impl/ae;

.field private final c:Lcom/yandex/metrica/IMetricaService$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Lcom/yandex/metrica/MetricaService$1;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/MetricaService$1;-><init>(Lcom/yandex/metrica/MetricaService;)V

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService;->a:Lcom/yandex/metrica/MetricaService$b;

    .line 124
    new-instance v0, Lcom/yandex/metrica/MetricaService$2;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/MetricaService$2;-><init>(Lcom/yandex/metrica/MetricaService;)V

    iput-object v0, p0, Lcom/yandex/metrica/MetricaService;->c:Lcom/yandex/metrica/IMetricaService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/MetricaService;)Lcom/yandex/metrica/impl/ae;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 88
    new-instance p1, Lcom/yandex/metrica/MetricaService$a;

    invoke-direct {p1}, Lcom/yandex/metrica/MetricaService$a;-><init>()V

    goto :goto_19

    .line 90
    :cond_12
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ae;->a(Landroid/content/Intent;)V

    .line 91
    iget-object p1, p0, Lcom/yandex/metrica/MetricaService;->c:Lcom/yandex/metrica/IMetricaService$Stub;

    :goto_19
    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/j;->a(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/ag;

    invoke-virtual {p0}, Lcom/yandex/metrica/MetricaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/metrica/MetricaService;->a:Lcom/yandex/metrica/MetricaService$b;

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ag;-><init>(Landroid/content/Context;Lcom/yandex/metrica/MetricaService$b;)V

    .line 67
    new-instance v1, Lcom/yandex/metrica/impl/af;

    invoke-direct {v1, v0}, Lcom/yandex/metrica/impl/af;-><init>(Lcom/yandex/metrica/impl/ae;)V

    iput-object v1, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    .line 69
    invoke-interface {v1}, Lcom/yandex/metrica/impl/ae;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ae;->b()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3

    .line 98
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ae;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0, p1, p2}, Lcom/yandex/metrica/impl/ae;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ae;->a(Landroid/content/Intent;II)V

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yandex.metrica.ACTION_BIND_TO_LOCAL_SERVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    .line 1139
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v2, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v2, 0x1

    :goto_1b
    if-eqz v2, :cond_1e

    return v1

    .line 118
    :cond_1e
    iget-object v1, p0, Lcom/yandex/metrica/MetricaService;->b:Lcom/yandex/metrica/impl/ae;

    invoke-interface {v1, p1}, Lcom/yandex/metrica/impl/ae;->c(Landroid/content/Intent;)V

    return v0
.end method
