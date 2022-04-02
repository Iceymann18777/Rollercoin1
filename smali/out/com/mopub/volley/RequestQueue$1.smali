.class Lcom/mopub/volley/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Lcom/mopub/volley/RequestQueue$RequestFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/volley/RequestQueue;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mopub/volley/RequestQueue;Ljava/lang/Object;)V
    .registers 3

    .line 240
    iput-object p1, p0, Lcom/mopub/volley/RequestQueue$1;->this$0:Lcom/mopub/volley/RequestQueue;

    iput-object p2, p0, Lcom/mopub/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/mopub/volley/Request;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
