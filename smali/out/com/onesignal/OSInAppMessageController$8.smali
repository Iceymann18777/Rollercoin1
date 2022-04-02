.class Lcom/onesignal/OSInAppMessageController$8;
.super Lcom/onesignal/OneSignalRestClient$ResponseHandler;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->fireRESTCallForClick(Lcom/onesignal/OSInAppMessage;Lcom/onesignal/OSInAppMessageAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;

.field final synthetic val$action:Lcom/onesignal/OSInAppMessageAction;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;Lcom/onesignal/OSInAppMessageAction;)V
    .registers 3

    .line 432
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$8;->this$0:Lcom/onesignal/OSInAppMessageController;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageController$8;->val$action:Lcom/onesignal/OSInAppMessageAction;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRestClient$ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method onFailure(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p3, "engagement"

    .line 446
    invoke-static {p3, p1, p2}, Lcom/onesignal/OSInAppMessageController;->access$200(Ljava/lang/String;ILjava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcom/onesignal/OSInAppMessageController$8;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {p1}, Lcom/onesignal/OSInAppMessageController;->access$600(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/onesignal/OSInAppMessageController$8;->val$action:Lcom/onesignal/OSInAppMessageAction;

    iget-object p2, p2, Lcom/onesignal/OSInAppMessageAction;->clickId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method onSuccess(Ljava/lang/String;)V
    .registers 4

    const-string v0, "engagement"

    .line 435
    invoke-static {v0, p1}, Lcom/onesignal/OSInAppMessageController;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object p1, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v0, p0, Lcom/onesignal/OSInAppMessageController$8;->this$0:Lcom/onesignal/OSInAppMessageController;

    .line 440
    invoke-static {v0}, Lcom/onesignal/OSInAppMessageController;->access$600(Lcom/onesignal/OSInAppMessageController;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "PREFS_OS_CLICKED_CLICK_IDS_IAMS"

    .line 437
    invoke-static {p1, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
