.class Lcom/onesignal/OSInAppMessageLocationPrompt;
.super Lcom/onesignal/OSInAppMessagePrompt;
.source "OSInAppMessageLocationPrompt.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/onesignal/OSInAppMessagePrompt;-><init>()V

    return-void
.end method


# virtual methods
.method getPromptKey()Ljava/lang/String;
    .registers 2

    const-string v0, "location"

    return-object v0
.end method

.method handlePrompt(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V
    .registers 3

    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    return-void
.end method
