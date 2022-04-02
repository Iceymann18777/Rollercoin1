.class Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.2.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoInit"
.end annotation


# instance fields
.field private dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/events/EventHandler<",
            "Lcom/google/firebase/DataCollectionDefaultChange;",
            ">;"
        }
    .end annotation
.end field

.field private fcmAutoInitEnabled:Ljava/lang/Boolean;

.field private initialized:Z

.field private isFcmLibraryPresent:Z

.field private final subscriber:Lcom/google/firebase/events/Subscriber;

.field final synthetic this$0:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lcom/google/firebase/events/Subscriber;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    return-void
.end method

.method private isFcmPresent()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.google.firebase.messaging.FirebaseMessaging"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    return v0

    :catch_7
    nop

    .line 51
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 55
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_30

    return v0

    :cond_30
    return v3
.end method

.method private readEnabled()Ljava/lang/Boolean;
    .registers 7

    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 32
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.firebase.messaging"

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "auto_init"

    .line 35
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 36
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 37
    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 41
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 42
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4d

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 43
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 44
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    :cond_4d
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize()V
    .registers 4

    monitor-enter p0

    .line 4
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_7

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isFcmPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isFcmLibraryPresent:Z

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->readEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    .line 8
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isFcmLibraryPresent:Z

    if-eqz v0, :cond_27

    .line 9
    new-instance v0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit$$Lambda$0;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->dataCollectionDefaultChangeEventHandler:Lcom/google/firebase/events/EventHandler;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->subscriber:Lcom/google/firebase/events/Subscriber;

    const-class v2, Lcom/google/firebase/DataCollectionDefaultChange;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    :cond_27
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->initialized:Z
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2c

    .line 12
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEnabled()Z
    .registers 2

    monitor-enter p0

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->initialize()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_26

    monitor-exit p0

    return v0

    .line 16
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isFcmLibraryPresent:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_26

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_23
    const/4 v0, 0x0

    .line 17
    monitor-exit p0

    return v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic lambda$initialize$0$FirebaseInstanceId$AutoInit(Lcom/google/firebase/events/Event;)V
    .registers 2

    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 58
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$AutoInit;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$100(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 59
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method
