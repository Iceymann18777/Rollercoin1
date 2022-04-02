.class Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

.field final synthetic val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;Landroid/content/Context;)V
    .registers 4

    .line 154
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 158
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string p2, "ServerResponse"

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_7
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$102(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 162
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStatUrls()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 163
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStatUrls()Ljava/util/Map;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->init(Ljava/util/HashMap;)V

    .line 165
    :cond_32
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAppBanActive()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 166
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startPausedContentInfoActivity(Landroid/content/Context;Z)V

    return-void

    .line 169
    :cond_45
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->startDataSdkController(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 170
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInAppPurchasesActive()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 171
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->getInstance()Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/inapp/InAppPurchaseController;->init(Landroid/content/Context;)V

    .line 173
    :cond_65
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive()Z

    move-result p1

    if-nez p1, :cond_7e

    .line 174
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->requestInit(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 177
    :cond_7e
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_86
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;

    .line 178
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    goto :goto_86

    .line 180
    :cond_9c
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isPushNotificationsActive()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 181
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$200(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;)V

    .line 183
    :cond_af
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$300(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_ca

    .line 184
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$400(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 185
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$302(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Z)Z

    .line 187
    :cond_ca
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e7

    .line 188
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p1

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setAdditionalJsCode(Ljava/lang/String;)V

    .line 190
    :cond_e7
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInactivityReminderEnabled()Z

    move-result p1

    if-eqz p1, :cond_121

    .line 191
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getInactivityDaysPeriod()I

    move-result p3

    invoke-static {p1, p3, p2}, Lcom/appsgeyser/sdk/utils/ReminderAlarmManager;->startReminderAlarm(Landroid/content/Context;IZ)V
    :try_end_102
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_102} :catch_103

    goto :goto_121

    .line 194
    :catch_103
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_121

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;

    .line 195
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-static {p3, v0, p2, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$500(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    goto :goto_10b

    .line 198
    :cond_121
    :goto_121
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
