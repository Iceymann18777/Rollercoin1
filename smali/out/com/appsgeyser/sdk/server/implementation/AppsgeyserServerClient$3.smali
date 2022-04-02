.class Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->initRatingDialog(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;)V
    .registers 3

    .line 387
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingDialogShown()V
    .registers 6

    .line 390
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$3;->val$context:Landroid/content/Context;

    const-string v2, "rma_dialog_impressions"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 391
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void
.end method

.method public onRatingSelected(FZ)V
    .registers 3

    .line 397
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setSelectedRating(F)V

    return-void
.end method
