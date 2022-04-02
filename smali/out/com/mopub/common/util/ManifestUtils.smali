.class public Lcom/mopub/common/util/ManifestUtils;
.super Ljava/lang/Object;
.source "ManifestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;,
        Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;
    }
.end annotation


# static fields
.field private static final CONSENT_ACTIVITY:Ljava/lang/String; = "com.mopub.common.privacy.ConsentDialogActivity"

.field private static final MOPUB_ACTIVITY:Ljava/lang/String; = "com.mopub.mobileads.MoPubActivity"

.field private static final MRAID_ACTIVITY:Ljava/lang/String; = "com.mopub.mobileads.MraidActivity"

.field private static final REQUIRED_GDPR_ACTIVITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REQUIRED_NATIVE_SDK_ACTIVITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final REWARDED_MRAID_ACTIVITY:Ljava/lang/String; = "com.mopub.mobileads.RewardedMraidActivity"

.field private static sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    invoke-direct {v0}, Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;-><init>()V

    sput-object v0, Lcom/mopub/common/util/ManifestUtils;->sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    const/4 v0, 0x1

    :try_start_10
    const-string v1, "com.mopub.mobileads.MoPubActivity"

    .line 49
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.mopub.mobileads.MraidActivity"

    .line 50
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.mopub.mobileads.RewardedMraidActivity"

    .line 51
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 52
    sget-object v4, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_31} :catch_32

    goto :goto_3e

    .line 56
    :catch_32
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ManifestUtils running without interstitial module"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 59
    :goto_3e
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    const-class v2, Lcom/mopub/mobileads/MraidVideoPlayerActivity;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    const-class v2, Lcom/mopub/common/MoPubBrowser;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_NATIVE_SDK_ACTIVITIES:Ljava/util/List;

    .line 66
    const-class v2, Lcom/mopub/common/MoPubBrowser;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_GDPR_ACTIVITIES:Ljava/util/List;

    .line 72
    const-class v0, Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGdprActivitiesDeclared(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context is not allowed to be null"

    .line 76
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 80
    :cond_9
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_GDPR_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMissingActivities(Landroid/content/Context;Ljava/util/List;)V

    .line 81
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_GDPR_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static checkNativeActivitiesDeclared(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context is not allowed to be null"

    .line 95
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 99
    :cond_9
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_NATIVE_SDK_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMissingActivities(Landroid/content/Context;Ljava/util/List;)V

    .line 100
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_NATIVE_SDK_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static checkWebViewActivitiesDeclared(Landroid/content/Context;)V
    .registers 2

    const-string v0, "context is not allowed to be null"

    .line 86
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 90
    :cond_9
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMissingActivities(Landroid/content/Context;Ljava/util/List;)V

    .line 91
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mopub/common/util/ManifestUtils;->displayWarningForMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static displayWarningForMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 137
    invoke-static {p0, p1, v0}, Lcom/mopub/common/util/ManifestUtils;->filterDeclaredActivities(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Lcom/mopub/common/util/ManifestUtils;->getMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 141
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 145
    :cond_10
    invoke-static {p0}, Lcom/mopub/common/util/ManifestUtils;->logWarningToast(Landroid/content/Context;)V

    .line 148
    invoke-static {p0, p1}, Lcom/mopub/common/util/ManifestUtils;->logMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static displayWarningForMissingActivities(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, v0}, Lcom/mopub/common/util/ManifestUtils;->filterDeclaredActivities(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 120
    :cond_c
    invoke-static {p0}, Lcom/mopub/common/util/ManifestUtils;->logWarningToast(Landroid/content/Context;)V

    .line 123
    invoke-static {p1}, Lcom/mopub/common/util/ManifestUtils;->logMissingActivities(Ljava/util/List;)V

    return-void
.end method

.method private static filterDeclaredActivities(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;Z)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 172
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    invoke-static {p0, v2}, Lcom/mopub/common/util/Intents;->deviceCanHandleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-ne v2, p2, :cond_9

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_24
    return-object v0
.end method

.method private static getActivityConfigChanges(Landroid/content/Context;Ljava/lang/Class;)Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 255
    new-instance v0, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;-><init>(Lcom/mopub/common/util/ManifestUtils$1;)V

    .line 256
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x20

    invoke-virtual {v1, p1, v2, v3}, Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;->hasFlag(Ljava/lang/Class;II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasKeyboardHidden:Z

    .line 257
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    invoke-virtual {v1, p1, v2, v3}, Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;->hasFlag(Ljava/lang/Class;II)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasOrientation:Z

    const/4 v1, 0x1

    .line 258
    iput-boolean v1, v0, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasScreenSize:Z

    .line 260
    sget-object v1, Lcom/mopub/common/util/ManifestUtils;->sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v2, 0x400

    invoke-virtual {v1, p1, p0, v2}, Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;->hasFlag(Ljava/lang/Class;II)Z

    move-result p0

    iput-boolean p0, v0, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasScreenSize:Z

    return-object v0
.end method

.method private static getMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 191
    :try_start_15
    invoke-static {p0, v1}, Lcom/mopub/common/util/ManifestUtils;->getActivityConfigChanges(Landroid/content/Context;Ljava/lang/Class;)Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;

    move-result-object v2
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_29

    .line 196
    iget-boolean v3, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasKeyboardHidden:Z

    if-eqz v3, :cond_25

    iget-boolean v3, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasOrientation:Z

    if-eqz v3, :cond_25

    iget-boolean v2, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasScreenSize:Z

    if-nez v2, :cond_9

    .line 197
    :cond_25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_29
    nop

    goto :goto_9

    :cond_2b
    return-object v0
.end method

.method static getRequiredNativeSdkActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_NATIVE_SDK_ACTIVITIES:Ljava/util/List;

    return-object v0
.end method

.method static getRequiredWebViewSdkActivities()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    sget-object v0, Lcom/mopub/common/util/ManifestUtils;->REQUIRED_WEB_VIEW_SDK_ACTIVITIES:Ljava/util/List;

    return-object v0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .registers 2

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x2

    .line 153
    invoke-static {p0, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p0

    return p0
.end method

.method private static logMisconfiguredActivities(Landroid/content/Context;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In AndroidManifest, the android:configChanges param is missing values for the following MoPub activities:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 225
    :try_start_17
    invoke-static {p0, v1}, Lcom/mopub/common/util/ManifestUtils;->getActivityConfigChanges(Landroid/content/Context;Ljava/lang/Class;)Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;

    move-result-object v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1b} :catch_7b

    .line 230
    iget-boolean v3, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasKeyboardHidden:Z

    const-string v4, "\n\tThe android:configChanges param for activity "

    if-nez v3, :cond_3c

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must include keyboardHidden."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_3c
    iget-boolean v3, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasOrientation:Z

    if-nez v3, :cond_5b

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must include orientation."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_5b
    iget-boolean v2, v2, Lcom/mopub/common/util/ManifestUtils$ActivityConfigChanges;->hasScreenSize:Z

    if-nez v2, :cond_b

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must include screenSize."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :catch_7b
    nop

    goto :goto_b

    :cond_7d
    const-string p0, "\n\nPlease update your manifest to include them."

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private static logMissingActivities(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;>;)V"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidManifest permissions for the following required MoPub activities are missing:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "\n\t"

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_24
    const-string p0, "\n\nPlease update your manifest to include them."

    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private static logWarningToast(Landroid/content/Context;)V
    .registers 3

    .line 267
    invoke-static {p0}, Lcom/mopub/common/util/ManifestUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    const-string v1, "ERROR: YOUR MOPUB INTEGRATION IS INCOMPLETE.\nCheck logcat and update your AndroidManifest.xml with the correct activities and configuration."

    .line 272
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 274
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1b
    return-void
.end method

.method static setFlagCheckUtil(Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    sput-object p0, Lcom/mopub/common/util/ManifestUtils;->sFlagCheckUtil:Lcom/mopub/common/util/ManifestUtils$FlagCheckUtil;

    return-void
.end method
