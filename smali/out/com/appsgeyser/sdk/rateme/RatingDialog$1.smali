.class Lcom/appsgeyser/sdk/rateme/RatingDialog$1;
.super Ljava/lang/Object;
.source "RatingDialog.java"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdClearedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/rateme/RatingDialog;->setRatingThresholdClearedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/rateme/RatingDialog;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$1;->this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdCleared(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 4

    .line 216
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$1;->this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-static {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->access$2200(Lcom/appsgeyser/sdk/rateme/RatingDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->openPlaystore(Landroid/content/Context;)V

    .line 217
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$1;->this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->dismiss()V

    return-void
.end method
