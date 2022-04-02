.class Lcom/appsgeyser/sdk/server/StatController$1;
.super Ljava/lang/Thread;
.source "StatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/StatController;

.field final synthetic val$details:Ljava/util/HashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/StatController;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4

    .line 152
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/StatController$1;->this$0:Lcom/appsgeyser/sdk/server/StatController;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/StatController$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/StatController$1;->val$details:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/StatController$1;->val$url:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/StatController$1;->val$details:Ljava/util/HashMap;

    if-eqz v1, :cond_3c

    .line 157
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/StatController$1;->val$details:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_18

    .line 164
    :cond_34
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_3c
    invoke-static {v0}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->addUrl(Ljava/lang/String;)V

    return-void
.end method
