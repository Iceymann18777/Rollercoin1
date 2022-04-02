.class Lcom/appsgeyser/sdk/rateme/RatingDialog$2;
.super Ljava/lang/Object;
.source "RatingDialog.java"

# interfaces
.implements Lcom/appsgeyser/sdk/rateme/RatingDialog$Builder$RatingThresholdFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/rateme/RatingDialog;->setRatingThresholdFailedListener()V
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

    .line 223
    iput-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$2;->this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThresholdFailed(Lcom/appsgeyser/sdk/rateme/RatingDialog;FZ)V
    .registers 4

    .line 226
    iget-object p1, p0, Lcom/appsgeyser/sdk/rateme/RatingDialog$2;->this$0:Lcom/appsgeyser/sdk/rateme/RatingDialog;

    invoke-static {p1}, Lcom/appsgeyser/sdk/rateme/RatingDialog;->access$2300(Lcom/appsgeyser/sdk/rateme/RatingDialog;)V

    return-void
.end method
