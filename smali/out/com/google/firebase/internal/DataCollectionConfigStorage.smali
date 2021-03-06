.class public Lcom/google/firebase/internal/DataCollectionConfigStorage;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final dataCollectionDefaultEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final publisher:Lcom/google/firebase/events/Publisher;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/events/Publisher;)V
    .registers 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->directBootSafe(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->applicationContext:Landroid/content/Context;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.firebase.common.prefs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 48
    iput-object p3, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->publisher:Lcom/google/firebase/events/Publisher;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/firebase/internal/DataCollectionConfigStorage;->readAutoDataCollectionEnabled()Z

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static directBootSafe(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 54
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_11

    .line 57
    :cond_d
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    :cond_11
    :goto_11
    return-object p0
.end method

.method private readAutoDataCollectionEnabled()Z
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 78
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 80
    iget-object v3, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->applicationContext:Landroid/content/Context;

    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 81
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 83
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3b

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 85
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 86
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3a} :catch_3b

    return v0

    :catch_3b
    :cond_3b
    return v2
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/google/firebase/internal/DataCollectionConfigStorage;->dataCollectionDefaultEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
