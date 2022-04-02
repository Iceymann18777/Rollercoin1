.class public Lcom/google/android/gms/common/GoogleApiAvailability;
.super Lcom/google/android/gms/common/GoogleApiAvailabilityLight;
.source "com.google.android.gms:play-services-base@@17.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/GoogleApiAvailability$zaa;
    }
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static final zaa:Ljava/lang/Object;

.field private static final zab:Lcom/google/android/gms/common/GoogleApiAvailability;


# instance fields
.field private zac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-direct {v0}, Lcom/google/android/gms/common/GoogleApiAvailability;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 209
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sput v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zab:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method public static zaa(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 5

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    .line 55
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zab;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    .line 57
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    .line 59
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method static zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 108
    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_2c
    if-nez v0, :cond_33

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    :cond_33
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zab;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3f

    .line 118
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_3f
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zab;->zae(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_48

    .line 121
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_48
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zab;->zaa(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 124
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    :cond_51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static varargs zaa(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "*>;[",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "Requested API must not be null."

    .line 77
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p1, v2

    .line 79
    invoke-static {v3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 81
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa()Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic zaa(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 205
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private final zaa()Ljava/lang/String;
    .registers 3

    .line 85
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 87
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static zaa(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    .line 126
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_12

    .line 128
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 131
    invoke-static {p1, p3}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/SupportErrorDialogFragment;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/SupportErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 135
    invoke-static {p1, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final zaa(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 13

    const/4 p3, 0x2

    new-array v0, p3, [Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v4, "GoogleApiAvailability"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_26

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;)V

    return-void

    :cond_26
    if-nez p4, :cond_31

    const/4 p1, 0x6

    if-ne p2, p1, :cond_30

    const-string p1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 147
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void

    .line 149
    :cond_31
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zab;->zab(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/zab;->zad(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "notification"

    .line 153
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 154
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v6, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 156
    invoke-virtual {v6, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 157
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 158
    invoke-virtual {v6, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 160
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 164
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 165
    sget v1, Lcom/google/android/gms/base/R$drawable;->common_full_open_on_phone:I

    sget v6, Lcom/google/android/gms/base/R$string;->common_open_on_phone:I

    .line 166
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v0, v1, v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_b3

    .line 168
    :cond_8f
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_b3

    :cond_93
    const v6, 0x108008a

    .line 170
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    sget v7, Lcom/google/android/gms/base/R$string;->common_google_play_services_notification_ticker:I

    .line 171
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 173
    invoke-virtual {v4, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    .line 174
    invoke-virtual {p4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 176
    :goto_b3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result p4

    if-eqz p4, :cond_ef

    .line 178
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_ec

    const-string p4, "com.google.android.gms.availability"

    .line 183
    invoke-virtual {v5, p4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zab;->zaa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_dc

    .line 187
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-direct {v1, p4, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_ec

    .line 188
    :cond_dc
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ec

    .line 189
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v5, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 193
    :cond_ec
    :goto_ec
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 194
    :cond_ef
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v3, :cond_fe

    if-eq p2, p3, :cond_fe

    const/4 p3, 0x3

    if-eq p2, p3, :cond_fe

    const p2, 0x9b6d

    goto :goto_105

    :cond_fe
    const/16 p2, 0x28c4

    .line 197
    sget-object p3, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    :goto_105
    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static final synthetic zab(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    .line 206
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/GoogleApi;[Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;[",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/common/zaa;->zaa:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public varargs checkApiAvailability(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "*>;[",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Lcom/google/android/gms/common/api/HasApiKey;[Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/common/zab;->zaa:Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getClientVersion(Landroid/content/Context;)I
    .registers 2

    .line 103
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getClientVersion(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .registers 5

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .registers 6

    const-string v0, "d"

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/zad;->zaa(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zad;

    move-result-object p3

    .line 18
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 4

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;
    .registers 4

    .line 100
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 102
    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final getErrorString(I)Ljava/lang/String;
    .registers 2

    .line 104
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 2

    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .registers 3

    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final isUserResolvableError(I)Z
    .registers 2

    .line 97
    invoke-super {p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isUserResolvableError(I)Z

    move-result p1

    return p1
.end method

.method public makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 3
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const-string v1, "makeGooglePlayServicesAvailable must be called from the main thread"

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 9
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zabo;

    move-result-object p1

    .line 10
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/common/api/internal/zal;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabo;->zac()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultNotificationChannelId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 88
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "notification"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 91
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_15
    sget-object p1, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa:Ljava/lang/Object;

    monitor-enter p1

    .line 93
    :try_start_18
    iput-object p2, p0, Lcom/google/android/gms/common/GoogleApiAvailability;->zac:Ljava/lang/String;

    .line 94
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p2

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1c

    throw p2
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;II)Z
    .registers 5

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    return p1
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 5

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 31
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showErrorNotification(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "n"

    .line 35
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getErrorResolutionPendingIntent(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public showErrorNotification(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 39
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabk;)Lcom/google/android/gms/common/api/internal/zabl;
    .registers 5

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/api/internal/zabl;-><init>(Lcom/google/android/gms/common/api/internal/zabk;)V

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUninstalledAppPossiblyUpdating(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zabk;->zaa()V

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa()V

    const/4 p1, 0x0

    return-object p1

    :cond_27
    return-object v1
.end method

.method final zaa(Landroid/content/Context;)V
    .registers 5

    .line 202
    new-instance v0, Lcom/google/android/gms/common/GoogleApiAvailability$zaa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability$zaa;-><init>(Lcom/google/android/gms/common/GoogleApiAvailability;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    .line 203
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .registers 7

    const-string p4, "d"

    .line 20
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    .line 22
    invoke-static {p2, p4, v0}, Lcom/google/android/gms/common/internal/zad;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zad;

    move-result-object p2

    .line 23
    invoke-static {p1, p3, p2, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILcom/google/android/gms/common/internal/zad;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 26
    invoke-static {p1, p2, p3, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zaa(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 6

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionPendingIntent(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/4 v1, 0x0

    .line 45
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 46
    invoke-direct {p0, p1, p2, v1, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method
