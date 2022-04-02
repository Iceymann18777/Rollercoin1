.class Lcom/onesignal/OneSignal$21$1;
.super Lcom/onesignal/LocationController$LocationPromptCompletionHandler;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OneSignal$21;


# direct methods
.method constructor <init>(Lcom/onesignal/OneSignal$21;)V
    .registers 2

    .line 2577
    iput-object p1, p0, Lcom/onesignal/OneSignal$21$1;->this$0:Lcom/onesignal/OneSignal$21;

    invoke-direct {p0}, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onesignal/LocationController$PermissionType;
    .registers 2

    .line 2580
    sget-object v0, Lcom/onesignal/LocationController$PermissionType;->PROMPT_LOCATION:Lcom/onesignal/LocationController$PermissionType;

    return-object v0
.end method

.method onAnswered(Lcom/onesignal/OneSignal$PromptActionResult;)V
    .registers 3

    .line 2594
    invoke-super {p0, p1}, Lcom/onesignal/LocationController$LocationPromptCompletionHandler;->onAnswered(Lcom/onesignal/OneSignal$PromptActionResult;)V

    .line 2595
    iget-object v0, p0, Lcom/onesignal/OneSignal$21$1;->this$0:Lcom/onesignal/OneSignal$21;

    iget-object v0, v0, Lcom/onesignal/OneSignal$21;->val$callback:Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;

    if-eqz v0, :cond_10

    .line 2596
    iget-object v0, p0, Lcom/onesignal/OneSignal$21$1;->this$0:Lcom/onesignal/OneSignal$21;

    iget-object v0, v0, Lcom/onesignal/OneSignal$21;->val$callback:Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;

    invoke-interface {v0, p1}, Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;->onCompleted(Lcom/onesignal/OneSignal$PromptActionResult;)V

    :cond_10
    return-void
.end method

.method public onComplete(Lcom/onesignal/LocationController$LocationPoint;)V
    .registers 3

    const-string v0, "promptLocation()"

    .line 2585
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_e

    .line 2589
    invoke-static {p1}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    :cond_e
    return-void
.end method
