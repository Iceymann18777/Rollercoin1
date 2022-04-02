.class Lcom/mopub/mobileads/MoPubView$1;
.super Landroid/content/BroadcastReceiver;
.source "MoPubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MoPubView;->registerScreenStateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MoPubView;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 179
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubView;->access$000(Lcom/mopub/mobileads/MoPubView;)I

    move-result p1

    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eqz p1, :cond_31

    if-nez p2, :cond_f

    goto :goto_31

    .line 183
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 186
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubView;->access$100(Lcom/mopub/mobileads/MoPubView;I)V

    goto :goto_31

    :cond_22
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 188
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubView$1;->this$0:Lcom/mopub/mobileads/MoPubView;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubView;->access$100(Lcom/mopub/mobileads/MoPubView;I)V

    :cond_31
    :goto_31
    return-void
.end method
