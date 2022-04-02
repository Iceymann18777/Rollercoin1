.class public Lcom/google/firebase/messaging/MessagingAnalytics;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@20.2.4"


# static fields
.field private static final dataEncoder:Lcom/google/firebase/encoders/DataEncoder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 175
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    const-class v1, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapper;

    new-instance v2, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapperEncoder;

    invoke-direct {v2}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapperEncoder;-><init>()V

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    const-class v1, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;

    new-instance v2, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventEncoder;

    invoke-direct {v2}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventEncoder;-><init>()V

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/MessagingAnalytics;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    return-void
.end method

.method static deliveryMetricsExportToBigQueryEnabled()Z
    .registers 6

    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    const/4 v1, 0x0

    .line 20
    :try_start_3
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_6} :catch_47

    .line 25
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.firebase.messaging"

    .line 27
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "export_to_big_query"

    .line 28
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 29
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 30
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 33
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    .line 34
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 35
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_46

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 36
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 37
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_45} :catch_46

    return v0

    :catch_46
    :cond_46
    return v1

    :catch_47
    const-string v0, "FirebaseMessaging"

    const-string v2, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    .line 23
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static getCollapseKey(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "collapse_key"

    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getComposerId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.c_id"

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getComposerLabel(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.c_l"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getInstanceId()Ljava/lang/String;
    .registers 1

    .line 136
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMessageChannel(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.m_c"

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMessageId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.message_id"

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "message_id"

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method static getMessageLabel(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.m_l"

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMessagePriority(Ljava/lang/String;)I
    .registers 2

    const-string v0, "high"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string v0, "normal"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static getMessageTime(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "google.c.a.ts"

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getMessageTypeForFirelog(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/messaging/NotificationParams;->isNotification(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "DISPLAY_NOTIFICATION"

    return-object p0

    :cond_13
    const-string p0, "DATA_MESSAGE"

    return-object p0
.end method

.method static getMessageTypeForScion(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 137
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/messaging/NotificationParams;->isNotification(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "display"

    return-object p0

    :cond_13
    const-string p0, "data"

    return-object p0
.end method

.method static getPackageName()Ljava/lang/String;
    .registers 1

    .line 135
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPriority(Landroid/content/Intent;)I
    .registers 3

    const-string v0, "google.delivered_priority"

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v0, "google.priority_reduced"

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p0, 0x2

    return p0

    :cond_18
    const-string v0, "google.priority"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1e
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessagePriority(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getProjectNumber()Ljava/lang/String;
    .registers 4

    .line 161
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    .line 165
    :cond_f
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1:"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    const-string v1, ":"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 169
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2c

    return-object v3

    :cond_2c
    const/4 v1, 0x1

    .line 171
    aget-object v0, v0, v1

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    return-object v3

    :cond_36
    return-object v0
.end method

.method static getTopic(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    const-string v0, "from"

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    const-string v0, "/topics/"

    .line 146
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method static getTtl(Landroid/content/Intent;)I
    .registers 3

    .line 117
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "google.ttl"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 118
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 119
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 120
    :cond_15
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_45

    .line 121
    :try_start_19
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_20} :catch_21

    return p0

    .line 123
    :catch_21
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid TTL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const/4 p0, 0x0

    return p0
.end method

.method static getUseDeviceTime(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    const-string v0, "google.c.a.udt"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isDirectBootMessage(Landroid/content/Intent;)Z
    .registers 2

    .line 19
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static logNotificationDismiss(Landroid/content/Intent;)V
    .registers 2

    const-string v0, "_nd"

    .line 9
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static logNotificationForeground(Landroid/content/Intent;)V
    .registers 2

    const-string v0, "_nf"

    .line 11
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static logNotificationOpen(Landroid/content/Intent;)V
    .registers 2

    .line 6
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->setUserPropertyIfRequired(Landroid/content/Intent;)V

    const-string v0, "_no"

    .line 7
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public static logNotificationReceived(Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/google/android/datatransport/Transport<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_nr"

    .line 2
    invoke-static {v0, p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/content/Intent;)V

    if-eqz p1, :cond_c

    const-string v0, "MESSAGE_DELIVERED"

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToFirelog(Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V

    :cond_c
    return-void
.end method

.method private static logToFirelog(Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/datatransport/Transport;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/google/android/datatransport/Transport<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 105
    new-instance p0, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapper;

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/FirelogAnalyticsEvent$FirelogAnalyticsEventWrapper;-><init>(Lcom/google/firebase/messaging/FirelogAnalyticsEvent;)V

    .line 106
    :try_start_a
    sget-object p1, Lcom/google/firebase/messaging/MessagingAnalytics;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    invoke-interface {p1, p0}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/datatransport/Event;->ofTelemetry(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V
    :try_end_17
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_a .. :try_end_17} :catch_18

    return-void

    :catch_18
    const-string p0, "FirebaseMessaging"

    const-string p1, "Failed to encode big query analytics payload. Skip sending"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static logToScion(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "_nmid"

    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_10
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    const-string v2, "_nmn"

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1b
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageLabel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "label"

    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_2a
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageChannel(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "message_channel"

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_39
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_44

    const-string v2, "_nt"

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_44
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTime(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseMessaging"

    if-eqz v1, :cond_5c

    :try_start_4c
    const-string v3, "_nmt"

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_55} :catch_56

    goto :goto_5c

    :catch_56
    move-exception v1

    const-string v3, "Error while parsing timestamp in GCM event"

    .line 84
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_5c
    :goto_5c
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getUseDeviceTime(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    :try_start_62
    const-string v3, "_ndt"

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6c

    goto :goto_72

    :catch_6c
    move-exception v1

    const-string v3, "Error while parsing use_device_time in GCM event"

    .line 92
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_72
    :goto_72
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTypeForScion(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_nr"

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    const-string v1, "_nf"

    .line 95
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    :cond_86
    const-string v1, "_nmc"

    .line 96
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    const/4 p1, 0x3

    .line 97
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x25

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logging to scion event="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scionPayload="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_c5
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    const-class v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz p1, :cond_d9

    const-string v1, "fcm"

    .line 101
    invoke-interface {p1, v1, p0, v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_d9
    const-string p0, "Unable to log event: analytics library is missing"

    .line 102
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setUserPropertyIfRequired(Landroid/content/Intent;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "google.c.a.tc"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "FirebaseMessaging"

    if-eqz v0, :cond_5e

    .line 46
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-virtual {v0, v3}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "Received event with track-conversion=true. Setting user property and reengagement event"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eqz v0, :cond_58

    const-string v1, "google.c.a.c_id"

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fcm"

    const-string v2, "_ln"

    .line 51
    invoke-interface {v0, v1, v2, p0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "source"

    const-string v4, "Firebase"

    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "medium"

    const-string v4, "notification"

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "campaign"

    .line 55
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_cmp"

    .line 56
    invoke-interface {v0, v1, p0, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_58
    const-string p0, "Unable to set user property for conversion tracking:  analytics library is missing"

    .line 58
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_5e
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_69

    const-string p0, "Received event with track-conversion=false. Do not set user property"

    .line 61
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method public static shouldUploadFirelogAnalytics(Landroid/content/Intent;)Z
    .registers 1

    if-eqz p0, :cond_e

    .line 16
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->isDirectBootMessage(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_e

    .line 18
    :cond_9
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->deliveryMetricsExportToBigQueryEnabled()Z

    move-result p0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldUploadScionMetrics(Landroid/content/Intent;)Z
    .registers 2

    if-eqz p0, :cond_16

    .line 13
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->isDirectBootMessage(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    const-string v0, "google.c.a.e"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method
