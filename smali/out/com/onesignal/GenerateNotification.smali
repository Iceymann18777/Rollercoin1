.class Lcom/onesignal/GenerateNotification;
.super Ljava/lang/Object;
.source "GenerateNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    }
.end annotation


# static fields
.field private static contextResources:Landroid/content/res/Resources;

.field private static currentContext:Landroid/content/Context;

.field private static notificationOpenedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static openerIsBroadcast:Z

.field private static packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(I)Landroid/content/Intent;
    .registers 1

    .line 73
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1077
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/onesignal/GenerateNotification;->addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception p1

    .line 1079
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Failed to parse JSON for custom buttons for alert dialog."

    invoke-static {v0, v1, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1082
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_19

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_29

    :cond_19
    const-string p1, "onesignal_in_app_alert_ok_button_text"

    const-string v0, "Ok"

    .line 1083
    invoke-static {p0, p1, v0}, Lcom/onesignal/OSUtils;->getResourceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "__DEFAULT__"

    .line 1084
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-void
.end method

.method private static addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 800
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    const-string v0, "bg_img"

    const/4 v1, 0x0

    .line 805
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 808
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "img"

    .line 809
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_22

    :cond_20
    move-object v0, v1

    move-object v2, v0

    :goto_22
    if-nez v0, :cond_2a

    const-string v0, "onesignal_bgimage_default_image"

    .line 813
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2a
    if-eqz v0, :cond_b4

    .line 816
    new-instance v9, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/onesignal/R$layout;->onesignal_bgimage_notif_layout:I

    invoke-direct {v9, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 817
    sget v3, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 818
    sget v3, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v4, "alert"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, v3, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 819
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_title:I

    const-string v3, "tc"

    const-string v4, "onesignal_bgimage_notif_title_color"

    invoke-static {v9, v2, p0, v3, v4}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    .line 820
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_body:I

    const-string v3, "bc"

    const-string v4, "onesignal_bgimage_notif_body_color"

    invoke-static {v9, v2, p0, v3, v4}, Lcom/onesignal/GenerateNotification;->setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6e

    const-string p0, "img_align"

    .line 823
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 824
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_84

    .line 826
    :cond_6e
    sget-object p0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object v2, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v3, "onesignal_bgimage_notif_image_align"

    const-string v4, "string"

    invoke-virtual {p0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_83

    .line 828
    sget-object v2, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_84

    :cond_83
    move-object p0, v1

    :goto_84
    const-string v2, "right"

    .line 831
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a9

    .line 835
    sget v4, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_align_layout:I

    const/16 v5, -0x1388

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 836
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    invoke-virtual {v9, p0, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 837
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage_right_aligned:I

    const/4 v0, 0x0

    invoke-virtual {v9, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 838
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    const/4 v0, 0x2

    invoke-virtual {v9, p0, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_ae

    .line 841
    :cond_a9
    sget p0, Lcom/onesignal/R$id;->os_bgimage_notif_bgimage:I

    invoke-virtual {v9, p0, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 843
    :goto_ae
    invoke-virtual {p1, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 847
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_b4
    return-void
.end method

.method private static addCustomAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1089
    new-instance p0, Lorg/json/JSONObject;

    const-string v0, "custom"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "a"

    .line 1091
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1094
    :cond_14
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "actionButtons"

    .line 1095
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 1098
    :cond_21
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 1100
    :goto_26
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_45

    .line 1101
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "text"

    .line 1103
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "id"

    .line 1104
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_45
    return-void
.end method

.method private static addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V
    .registers 14

    const-string v0, "icon"

    const-string v1, "actionButtons"

    const-string v2, "a"

    const-string v3, "grp"

    .line 1037
    :try_start_8
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "custom"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    return-void

    .line 1042
    :cond_1a
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1043
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    return-void

    .line 1046
    :cond_25
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1048
    :goto_2b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a9

    .line 1049
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1050
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1052
    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v7

    .line 1053
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "action_button"

    const/4 v9, 0x1

    .line 1054
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "actionId"

    const-string v9, "id"

    .line 1055
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "onesignalData"

    .line 1056
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_78

    const-string v6, "summary"

    .line 1058
    invoke-virtual {v7, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_85

    .line 1059
    :cond_78
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 1060
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    :cond_85
    :goto_85
    invoke-static {p2, v7}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1065
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1066
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result v7

    goto :goto_99

    :cond_98
    const/4 v7, 0x0

    :goto_99
    const-string v8, "text"

    .line 1068
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_a2
    .catchall {:try_start_8 .. :try_end_a2} :catchall_a5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :catchall_a5
    move-exception p0

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a9
    return-void
.end method

.method private static addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V
    .registers 5

    .line 491
    iget-boolean p0, p0, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    if-nez p0, :cond_5

    return-void

    :cond_5
    :try_start_5
    const-string p0, "android.app.MiuiNotification"

    .line 495
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 496
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "customizedIcon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 498
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "extraNotification"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 502
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_34

    :catchall_34
    return-void
.end method

.method private static applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 7

    .line 430
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v0, v0, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroidx/core/app/NotificationCompat$Extender;

    if-nez v0, :cond_b

    goto :goto_71

    .line 434
    :cond_b
    :try_start_b
    const-class v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "mNotification"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification;

    .line 438
    iget v3, v2, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/onesignal/NotificationGenerationJob;->orgFlags:Ljava/lang/Integer;

    .line 439
    iget-object v2, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    .line 440
    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overrideSettings:Lcom/onesignal/NotificationExtenderService$OverrideSettings;

    iget-object v2, v2, Lcom/onesignal/NotificationExtenderService$OverrideSettings;->extender:Landroidx/core/app/NotificationCompat$Extender;

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 444
    const-class v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "mContentText"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 445
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 448
    const-class v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "mContentTitle"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 449
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 450
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 452
    iput-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenBodyFromExtender:Ljava/lang/CharSequence;

    .line 453
    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenTitleFromExtender:Ljava/lang/CharSequence;

    .line 454
    iget-boolean p1, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez p1, :cond_71

    .line 455
    iget p1, v0, Landroid/app/Notification;->flags:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    .line 456
    iget-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object p1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;
    :try_end_6c
    .catchall {:try_start_b .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p0

    .line 459
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_71
    :goto_71
    return-void
.end method

.method private static convertOSToAndroidPriority(I)I
    .registers 3

    const/4 v0, 0x2

    const/16 v1, 0x9

    if-le p0, v1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x7

    if-le p0, v1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 v1, 0x4

    if-le p0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    if-le p0, v0, :cond_14

    const/4 p0, -0x1

    return p0

    :cond_14
    const/4 p0, -0x2

    return p0
.end method

.method private static createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 766
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onesignalData"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "summary"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createGenericPendingIntentsForGroup(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 8

    .line 412
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 413
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {p3}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "onesignalData"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "grp"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 414
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 415
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p3}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 416
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 417
    invoke-virtual {p0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 420
    :try_start_3b
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3e

    :catchall_3e
    return-void
.end method

.method private static createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;I)Landroid/app/Notification;
    .registers 7

    .line 403
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 404
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "onesignalData"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 405
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 406
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p2}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 407
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 408
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static createGrouplessSummaryNotification(Lcom/onesignal/NotificationGenerationJob;I)V
    .registers 10

    .line 716
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 720
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 721
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v2

    .line 722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new messages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryId()I

    move-result v4

    .line 725
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    invoke-static {v4, v0, v2}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 726
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "summary"

    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 728
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v6

    iget-object v6, v6, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 729
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v7, :cond_4e

    .line 730
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 732
    :cond_4e
    iget-object v7, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v7, :cond_5b

    .line 733
    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v6, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 737
    :cond_5b
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 738
    invoke-virtual {p0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 739
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 740
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 741
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 742
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 743
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 744
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 745
    invoke-virtual {p0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 746
    invoke-virtual {p0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 747
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 750
    :try_start_9f
    invoke-virtual {v6, p1}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a2

    .line 756
    :catchall_a2
    new-instance p0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 758
    invoke-virtual {p0, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 759
    invoke-virtual {v6, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 760
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 762
    sget-object p1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-virtual {p1, v4, p0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 5

    .line 469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_27

    .line 473
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    iget-object v2, p0, Lcom/onesignal/NotificationGenerationJob;->orgSound:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 477
    :cond_27
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v0, :cond_32

    .line 480
    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_32
    return-object v1
.end method

.method private static createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "Error closing transaction! "

    const/4 v1, 0x0

    .line 774
    :try_start_3
    invoke-virtual {p0}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_38

    .line 775
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 777
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "android_notification_id"

    .line 778
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "group_id"

    .line 779
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_summary"

    const/4 p2, 0x1

    .line 780
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "notification"

    .line 781
    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 782
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_35

    if-eqz p0, :cond_4c

    .line 788
    :try_start_31
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_46

    goto :goto_4c

    :catchall_35
    move-exception p1

    move-object v1, p0

    goto :goto_39

    :catchall_38
    move-exception p1

    .line 784
    :goto_39
    :try_start_39
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Error adding summary notification record! "

    invoke-static {p0, p2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4d

    if-eqz v1, :cond_4c

    .line 788
    :try_start_42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4c

    :catchall_46
    move-exception p0

    .line 790
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    return-void

    :catchall_4d
    move-exception p0

    if-eqz v1, :cond_5a

    .line 788
    :try_start_50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_5a

    :catchall_54
    move-exception p1

    .line 790
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 793
    :cond_5a
    :goto_5a
    throw p0
.end method

.method private static createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "message"

    const-string v3, "title"

    const-string v4, "is_summary"

    const-string v5, "full_data"

    const-string v6, "android_notification_id"

    .line 513
    iget-boolean v7, v1, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    .line 514
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v9, "grp"

    const/4 v10, 0x0

    .line 516
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 518
    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 519
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/onesignal/GenerateNotification;->getNewBaseDeleteIntent(I)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "summary"

    invoke-virtual {v14, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 527
    sget-object v14, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v14

    .line 531
    :try_start_37
    invoke-virtual {v14}, Lcom/onesignal/OneSignalDbHelper;->getSQLiteDatabaseWithRetries()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 533
    filled-new-array {v6, v5, v4, v3, v0}, [Ljava/lang/String;

    move-result-object v17
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_2f0

    :try_start_3f
    const-string v10, "group_id = ? AND dismissed = 0 AND opened = 0"

    const/4 v13, 0x1

    move-object/from16 v23, v8

    new-array v8, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v8, v16
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_2ec

    if-nez v7, :cond_76

    .line 545
    :try_start_4c
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v2, -0x1

    if-eq v13, v2, :cond_76

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " AND android_notification_id <> "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6f
    .catchall {:try_start_4c .. :try_end_6f} :catchall_72

    move-object/from16 v18, v2

    goto :goto_78

    :catchall_72
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_2f2

    :cond_76
    move-object/from16 v18, v10

    :goto_78
    :try_start_78
    const-string v16, "notification"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "_id DESC"

    move-object/from16 v19, v8

    .line 548
    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_2ec

    .line 558
    :try_start_86
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_2e9

    const-string v10, " "

    const-string v13, ""

    if-eqz v8, :cond_13b

    .line 560
    :try_start_90
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_98
    move-object/from16 v17, v12

    .line 563
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    move-object/from16 v18, v4

    const/4 v4, 0x1

    if-ne v12, v4, :cond_b8

    .line 564
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    goto :goto_114

    .line 566
    :cond_b8
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c4

    move-object v4, v13

    goto :goto_d3

    .line 570
    :cond_c4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    :goto_d3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v0

    .line 576
    new-instance v0, Landroid/text/SpannableString;

    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_107

    .line 578
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v3, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v12, 0x0

    invoke-virtual {v0, v3, v12, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 579
    :cond_107
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_114

    .line 582
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 584
    :cond_114
    :goto_114
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_118
    .catchall {:try_start_90 .. :try_end_118} :catchall_2e9

    if-nez v0, :cond_131

    if-eqz v7, :cond_12d

    if-eqz v15, :cond_12d

    .line 588
    :try_start_11e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_123
    .catch Lorg/json/JSONException; {:try_start_11e .. :try_end_123} :catch_129
    .catchall {:try_start_11e .. :try_end_123} :catchall_2e9

    move-object/from16 v24, v8

    move-object v8, v0

    move-object/from16 v0, v24

    goto :goto_142

    :catch_129
    move-exception v0

    .line 590
    :try_start_12a
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_2e9

    :cond_12d
    move-object v0, v8

    move-object/from16 v8, v23

    goto :goto_142

    :cond_131
    move-object/from16 v12, v17

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move-object/from16 v3, v20

    goto/16 :goto_98

    :cond_13b
    move-object/from16 v17, v12

    move-object/from16 v8, v23

    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_142
    if-eqz v2, :cond_14d

    .line 596
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_14d

    .line 597
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_14d
    if-nez v16, :cond_15e

    .line 601
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 602
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v14, v9, v2}, Lcom/onesignal/GenerateNotification;->createSummaryIdDatabaseEntry(Lcom/onesignal/OneSignalDbHelper;Ljava/lang/String;I)V

    .line 605
    :cond_15e
    invoke-virtual {v11}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v8, v9}, Lcom/onesignal/GenerateNotification;->createBaseSummaryIntent(ILorg/json/JSONObject;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/GenerateNotification;->getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v0, :cond_2a6

    if-eqz v7, :cond_179

    .line 609
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_181

    :cond_179
    if-nez v7, :cond_2a6

    .line 610
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_2a6

    .line 611
    :cond_181
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    xor-int/lit8 v4, v7, 0x1

    add-int/2addr v3, v4

    const-string v4, "grp_msg"

    const/4 v5, 0x0

    .line 613
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a3

    .line 615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " new messages"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1b8

    .line 617
    :cond_1a3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "$[notif_count]"

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 619
    :goto_1b8
    invoke-static/range {p0 .. p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v6

    iget-object v6, v6, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v7, :cond_1c4

    .line 621
    invoke-static {v6}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V

    goto :goto_1da

    .line 623
    :cond_1c4
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    if-eqz v8, :cond_1cd

    .line 624
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenSound:Landroid/net/Uri;

    invoke-virtual {v6, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 626
    :cond_1cd
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    if-eqz v8, :cond_1da

    .line 627
    iget-object v8, v1, Lcom/onesignal/NotificationGenerationJob;->overriddenFlags:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 632
    :cond_1da
    :goto_1da
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    move-object/from16 v11, v17

    .line 633
    invoke-virtual {v2, v11}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    sget-object v8, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 634
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v11, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 635
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 636
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 637
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 638
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 639
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 640
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 641
    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 642
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 645
    :try_start_221
    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_224
    .catchall {:try_start_221 .. :try_end_224} :catchall_225

    goto :goto_226

    :catchall_225
    nop

    :goto_226
    if-nez v7, :cond_22b

    .line 652
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 654
    :cond_22b
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    if-nez v7, :cond_287

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_241

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_242

    :cond_241
    move-object v3, v5

    :goto_242
    if-nez v3, :cond_245

    goto :goto_254

    .line 666
    :cond_245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 668
    :goto_254
    invoke-virtual/range {p0 .. p0}, Lcom/onesignal/NotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    new-instance v3, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_284

    .line 672
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 673
    :cond_284
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 676
    :cond_287
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableString;

    .line 677
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_28b

    .line 678
    :cond_29b
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 679
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 681
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_2db

    :cond_2a6
    move-object/from16 v11, v17

    move-object/from16 v1, p1

    .line 685
    iget-object v0, v1, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 690
    iget-object v3, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 691
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v8, v0, v3, v9}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 693
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 694
    invoke-virtual {v2, v11}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 695
    invoke-virtual {v2, v7}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 696
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 697
    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 698
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 701
    :try_start_2d1
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_2d4
    .catchall {:try_start_2d1 .. :try_end_2d4} :catchall_2d4

    .line 707
    :catchall_2d4
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 708
    invoke-static {v1, v0}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 711
    :goto_2db
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_2e9
    move-exception v0

    move-object v10, v2

    goto :goto_2f2

    :catchall_2ec
    move-exception v0

    const/4 v5, 0x0

    move-object v10, v5

    goto :goto_2f2

    :catchall_2f0
    move-exception v0

    move-object v5, v10

    :goto_2f2
    if-eqz v10, :cond_2fd

    .line 596
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2fd

    .line 597
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_2fd
    goto :goto_2ff

    :goto_2fe
    throw v0

    :goto_2ff
    goto :goto_2fe
.end method

.method static fromJsonPayload(Lcom/onesignal/NotificationGenerationJob;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    .line 111
    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/onesignal/NotificationGenerationJob;->showAsAlert:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_21

    .line 112
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    sget-object v1, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V

    return-void

    .line 116
    :cond_21
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->showNotification(Lcom/onesignal/NotificationGenerationJob;)V

    return-void
.end method

.method private static getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;
    .registers 5

    const-string v0, "bgac"

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1022
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1023
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v3

    .line 1027
    :catchall_15
    :cond_15
    :try_start_15
    sget-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-string v0, "com.onesignal.NotificationAccentColor.DEFAULT"

    invoke-static {p0, v0}, Lcom/onesignal/OSUtils;->getManifestMeta(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 1029
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    :cond_25
    return-object v2
.end method

.method private static getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;
    .registers 10

    const-string v0, "vis"

    .line 219
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    .line 220
    new-instance v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;-><init>(Lcom/onesignal/GenerateNotification$1;)V

    .line 224
    :try_start_a
    invoke-static {p0}, Lcom/onesignal/NotificationChannelManager;->createNotificationChannel(Lcom/onesignal/NotificationGenerationJob;)Ljava/lang/String;

    move-result-object v4

    .line 226
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v6, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_1d

    .line 228
    :catchall_16
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    :goto_1d
    const-string v4, "alert"

    .line 231
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    .line 235
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 236
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getSmallIconId(Lorg/json/JSONObject;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 237
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 238
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v7

    .line 239
    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_58

    const-string v7, "title"

    .line 244
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 245
    :cond_58
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 248
    :cond_5f
    :try_start_5f
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getAccentColor(Lorg/json/JSONObject;)Ljava/math/BigInteger;

    move-result-object v7

    if-eqz v7, :cond_6c

    .line 250
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_6c

    .line 255
    :catchall_6c
    :cond_6c
    :try_start_6c
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 256
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x1

    .line 257
    :goto_7c
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_80

    goto :goto_81

    :catchall_80
    nop

    .line 260
    :goto_81
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 262
    iput-boolean v6, v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->hasLargeIcon:Z

    .line 263
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_8c
    const-string v0, "bicon"

    .line 266
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 268
    new-instance v3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 270
    :cond_a8
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    if-eqz v0, :cond_b9

    .line 272
    :try_start_ac
    iget-object p0, p0, Lcom/onesignal/NotificationGenerationJob;->shownTimeStamp:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    mul-long v3, v3, v6

    invoke-virtual {v5, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_b9

    .line 276
    :catchall_b9
    :cond_b9
    invoke-static {v1, v5}, Lcom/onesignal/GenerateNotification;->setAlertnessOptions(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 278
    iput-object v5, v2, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-object v2
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 956
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1e

    .line 961
    :cond_19
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 959
    :cond_1e
    :goto_1e
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    .line 920
    :try_start_1
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_10

    goto :goto_11

    :catchall_10
    move-object v1, v0

    :goto_11
    if-eqz v1, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    const-string v2, ".png"

    const-string v3, ".webp"

    const-string v4, ".jpg"

    const-string v5, ".gif"

    const-string v6, ".bmp"

    .line 926
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 927
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_65

    .line 929
    :try_start_36
    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_54

    goto :goto_55

    :catchall_54
    nop

    :goto_55
    if-eqz v1, :cond_2a

    return-object v1

    .line 935
    :cond_58
    :try_start_58
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_65

    .line 937
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    invoke-static {v1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_65

    return-object p0

    :catchall_65
    :cond_65
    return-object v0
.end method

.method private static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 945
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception p0

    .line 947
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Could not download image!"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDefaultLargeIcon()Landroid/graphics/Bitmap;
    .registers 1

    const-string v0, "ic_onesignal_large_icon_default"

    .line 883
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 884
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSmallIconId()I
    .registers 1

    const-string v0, "ic_stat_onesignal_default"

    .line 993
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    const-string v0, "corona_statusbar_icon_default"

    .line 997
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_12
    const-string v0, "ic_os_notification_fallback_white_24dp"

    .line 1001
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    :cond_1b
    const v0, 0x108005e

    return v0
.end method

.method private static getDrawableId(Ljava/lang/String;)I
    .registers 4

    .line 1009
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object v1, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getLargeIcon(Lorg/json/JSONObject;)Landroid/graphics/Bitmap;
    .registers 2

    const-string v0, "licon"

    .line 872
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_12

    const-string p0, "ic_onesignal_large_icon_default"

    .line 874
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBitmapFromAssetsOrResourceName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_12
    if-nez p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 879
    :cond_16
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getNewActionPendingIntent(ILandroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 4

    .line 194
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    const/high16 v1, 0x8000000

    if-eqz v0, :cond_d

    .line 195
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 196
    :cond_d
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static getNewBaseDeleteIntent(I)Landroid/content/Intent;
    .registers 4

    .line 209
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "androidNotificationId"

    .line 210
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "dismissed"

    const/4 v1, 0x1

    .line 211
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 213
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v0, :cond_1b

    return-object p0

    :cond_1b
    const/high16 v0, 0x18010000

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getNewBaseIntent(I)Landroid/content/Intent;
    .registers 4

    .line 200
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "androidNotificationId"

    .line 201
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 203
    sget-boolean v0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    if-eqz v0, :cond_14

    return-object p0

    :cond_14
    const/high16 v0, 0x24000000

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceIcon(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 968
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v1}, Lcom/onesignal/OSUtils;->isValidResourceName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    return v0

    .line 972
    :cond_f
    invoke-static {v1}, Lcom/onesignal/GenerateNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_16

    return v1

    .line 978
    :cond_16
    :try_start_16
    const-class v1, Landroid/R$drawable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    return v0
.end method

.method private static getSmallIconId(Lorg/json/JSONObject;)I
    .registers 3

    const-string v0, "sicon"

    const/4 v1, 0x0

    .line 985
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getResourceIcon(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_e

    return p0

    .line 989
    :cond_e
    invoke-static {}, Lcom/onesignal/GenerateNotification;->getDefaultSmallIconId()I

    move-result p0

    return p0
.end method

.method private static getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    .registers 3

    const-string v0, "title"

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    return-object p0

    .line 190
    :cond_a
    sget-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static isSoundEnabled(Lorg/json/JSONObject;)Z
    .registers 3

    const-string v0, "sound"

    const/4 v1, 0x0

    .line 1013
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    .line 1014
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "nil"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1d

    .line 1016
    :cond_18
    invoke-static {}, Lcom/onesignal/OneSignal;->getSoundEnabled()Z

    move-result p0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return p0
.end method

.method private static removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 2

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 331
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static resizeBitmapForLargeIconArea(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 893
    :cond_4
    :try_start_4
    sget-object v0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 894
    sget-object v1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    const v2, 0x1050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 895
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 896
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, v1, :cond_24

    if-le v2, v0, :cond_3c

    :cond_24
    if-le v2, v3, :cond_2e

    int-to-float v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v0

    mul-float v2, v2, v1

    float-to-int v1, v2

    goto :goto_37

    :cond_2e
    if-le v3, v2, :cond_37

    int-to-float v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float v2, v2, v0

    float-to-int v0, v2

    :cond_37
    :goto_37
    const/4 v2, 0x1

    .line 908
    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3c

    :catchall_3c
    :cond_3c
    return-object p0
.end method

.method private static safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    if-eqz p0, :cond_1c

    .line 864
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 865
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1c

    return-object p0

    :catchall_1c
    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setAlertnessOptions(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 8

    const-string v0, "pri"

    const/4 v1, 0x6

    .line 284
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 285
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->convertOSToAndroidPriority(I)I

    move-result v0

    .line 286
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    return-void

    :cond_18
    const-string v0, "ledc"

    .line 295
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_40

    const-string v3, "led"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_40

    .line 297
    :try_start_29
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    invoke-direct {v3, v0, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 298
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v3, 0x7d0

    const/16 v5, 0x1388

    invoke-virtual {p1, v0, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_40

    goto :goto_41

    :catchall_40
    :cond_40
    const/4 v1, 0x4

    .line 306
    :goto_41
    invoke-static {}, Lcom/onesignal/OneSignal;->getVibrate()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "vib"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_63

    const-string v0, "vib_pt"

    .line 307
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 308
    invoke-static {p0}, Lcom/onesignal/OSUtils;->parseVibrationPattern(Lorg/json/JSONObject;)[J

    move-result-object v0

    if-eqz v0, :cond_63

    .line 310
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_63

    :cond_61
    or-int/lit8 v1, v1, 0x2

    .line 316
    :cond_63
    :goto_63
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->isSoundEnabled(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 317
    sget-object v0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "sound"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OSUtils;->getSoundUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_7c

    .line 319
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_7e

    :cond_7c
    or-int/lit8 v1, v1, 0x1

    .line 324
    :cond_7e
    :goto_7e
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static setStatics(Landroid/content/Context;)V
    .registers 4

    .line 93
    sput-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    .line 95
    sget-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sput-object p0, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    .line 97
    sget-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 98
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    const-class v2, Lcom/onesignal/NotificationOpenedReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    sget-object v1, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3b

    const/4 p0, 0x1

    .line 101
    sput-boolean p0, Lcom/onesignal/GenerateNotification;->openerIsBroadcast:Z

    .line 102
    const-class p0, Lcom/onesignal/NotificationOpenedReceiver;

    sput-object p0, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    goto :goto_3f

    .line 105
    :cond_3b
    const-class p0, Lcom/onesignal/NotificationOpenedActivity;

    sput-object p0, Lcom/onesignal/GenerateNotification;->notificationOpenedClass:Ljava/lang/Class;

    :goto_3f
    return-void
.end method

.method private static setTextColor(Landroid/widget/RemoteViews;Lorg/json/JSONObject;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 852
    invoke-static {p1, p3}, Lcom/onesignal/GenerateNotification;->safeGetColorFromHex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 854
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_23

    .line 856
    :cond_e
    sget-object p1, Lcom/onesignal/GenerateNotification;->contextResources:Landroid/content/res/Resources;

    sget-object p3, Lcom/onesignal/GenerateNotification;->packageName:Ljava/lang/String;

    const-string v0, "color"

    invoke-virtual {p1, p4, v0, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_23

    .line 858
    sget-object p3, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_23
    :goto_23
    return-void
.end method

.method private static showNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .registers 11

    .line 337
    invoke-virtual {p0}, Lcom/onesignal/NotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/onesignal/NotificationGenerationJob;->jsonPayload:Lorg/json/JSONObject;

    const-string v2, "grp"

    const/4 v3, 0x0

    .line 339
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_34

    .line 345
    sget-object v4, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/onesignal/OneSignalNotificationManager;->getActiveGrouplessNotifications(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v2, :cond_34

    .line 347
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_34

    .line 348
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v2

    .line 349
    sget-object v5, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/onesignal/OneSignalNotificationManager;->assignGrouplessNotifications(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 353
    :cond_34
    invoke-static {p0}, Lcom/onesignal/GenerateNotification;->getBaseOneSignalNotificationBuilder(Lcom/onesignal/NotificationGenerationJob;)Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;

    move-result-object v5

    .line 354
    iget-object v7, v5, Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;->compatBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 356
    invoke-static {v1, v7, v0, v3}, Lcom/onesignal/GenerateNotification;->addNotificationActionButtons(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;ILjava/lang/String;)V

    .line 359
    :try_start_3d
    invoke-static {v1, v7}, Lcom/onesignal/GenerateNotification;->addBackgroundImage(Lorg/json/JSONObject;Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_49

    :catchall_41
    move-exception v3

    .line 361
    sget-object v8, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v9, "Could not set background notification image!"

    invoke-static {v8, v9, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    :goto_49
    invoke-static {p0, v7}, Lcom/onesignal/GenerateNotification;->applyNotificationExtender(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 367
    iget-boolean v3, p0, Lcom/onesignal/NotificationGenerationJob;->restoring:Z

    if-eqz v3, :cond_53

    .line 368
    invoke-static {v7}, Lcom/onesignal/GenerateNotification;->removeNotifyOptions(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_53
    const/4 v3, 0x1

    if-eqz v2, :cond_58

    const/4 v8, 0x2

    goto :goto_59

    :cond_58
    const/4 v8, 0x1

    .line 373
    :goto_59
    sget-object v9, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/onesignal/NotificationLimitManager;->clearOldestOverLimit(Landroid/content/Context;I)V

    if-eqz v2, :cond_82

    .line 377
    invoke-static {v7, v1, v2, v0}, Lcom/onesignal/GenerateNotification;->createGenericPendingIntentsForGroup(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 378
    invoke-static {p0, v7}, Lcom/onesignal/GenerateNotification;->createSingleNotificationBeforeSummaryBuilder(Lcom/onesignal/NotificationGenerationJob;Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v1

    .line 381
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v6, :cond_7e

    .line 382
    invoke-static {}, Lcom/onesignal/OneSignalNotificationManager;->getGrouplessSummaryKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 383
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {p0, v4}, Lcom/onesignal/GenerateNotification;->createGrouplessSummaryNotification(Lcom/onesignal/NotificationGenerationJob;I)V

    goto :goto_86

    .line 385
    :cond_7e
    invoke-static {p0, v5}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    goto :goto_86

    .line 388
    :cond_82
    invoke-static {v7, v1, v0}, Lcom/onesignal/GenerateNotification;->createGenericPendingIntentsForNotif(Landroidx/core/app/NotificationCompat$Builder;Lorg/json/JSONObject;I)Landroid/app/Notification;

    move-result-object v1

    :goto_86
    if-eqz v2, :cond_8e

    .line 396
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le p0, v2, :cond_9a

    .line 397
    :cond_8e
    invoke-static {v5, v1}, Lcom/onesignal/GenerateNotification;->addXiaomiSettings(Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;Landroid/app/Notification;)V

    .line 398
    sget-object p0, Lcom/onesignal/GenerateNotification;->currentContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_9a
    return-void
.end method

.method private static showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
    .registers 4

    .line 120
    new-instance v0, Lcom/onesignal/GenerateNotification$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/onesignal/GenerateNotification$1;-><init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateSummaryNotification(Lcom/onesignal/NotificationGenerationJob;)V
    .registers 2

    .line 507
    iget-object v0, p0, Lcom/onesignal/NotificationGenerationJob;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->setStatics(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 508
    invoke-static {p0, v0}, Lcom/onesignal/GenerateNotification;->createSummaryNotification(Lcom/onesignal/NotificationGenerationJob;Lcom/onesignal/GenerateNotification$OneSignalNotificationBuilder;)V

    return-void
.end method
