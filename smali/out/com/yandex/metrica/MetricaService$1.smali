.class Lcom/yandex/metrica/MetricaService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/MetricaService$b;


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

    .line 54
    iput-object p1, p0, Lcom/yandex/metrica/MetricaService$1;->a:Lcom/yandex/metrica/MetricaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/MetricaService$1;->a:Lcom/yandex/metrica/MetricaService;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/MetricaService;->stopSelfResult(I)Z

    return-void
.end method
