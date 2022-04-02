.class Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/ExecutorDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseDeliveryRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/mopub/volley/Request;

.field private final mResponse:Lcom/mopub/volley/Response;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;Ljava/lang/Runnable;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    .line 80
    iput-object p2, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/mopub/volley/Response;

    .line 81
    iput-object p3, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 96
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_10
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/mopub/volley/Response;

    invoke-virtual {v0}, Lcom/mopub/volley/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 102
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    iget-object v1, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/mopub/volley/Response;

    iget-object v1, v1, Lcom/mopub/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_2b

    .line 104
    :cond_22
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    iget-object v1, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/mopub/volley/Response;

    iget-object v1, v1, Lcom/mopub/volley/Response;->error:Lcom/mopub/volley/VolleyError;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->deliverError(Lcom/mopub/volley/VolleyError;)V

    .line 109
    :goto_2b
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/mopub/volley/Response;

    iget-boolean v0, v0, Lcom/mopub/volley/Response;->intermediate:Z

    if-eqz v0, :cond_39

    .line 110
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_40

    .line 112
    :cond_39
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/mopub/volley/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    .line 116
    :goto_40
    iget-object v0, p0, Lcom/mopub/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_47

    .line 117
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_47
    return-void
.end method
