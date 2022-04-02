.class public Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAvailableReceiver.java"


# instance fields
.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized createAndRegisterNetworkReceiver(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;
    .registers 5

    const-class v0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    monitor-enter v0

    .line 22
    :try_start_3
    new-instance v1, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;

    invoke-direct {v1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;-><init>()V

    .line 23
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 25
    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyAllListeners(Landroid/content/Context;)V
    .registers 4

    .line 34
    invoke-static {p1}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 35
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_d
    if-ge v0, p1, :cond_33

    .line 36
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 37
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->networkIsUp()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 40
    :cond_1d
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_23
    if-ge v0, p1, :cond_33

    .line 41
    iget-object v1, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;

    .line 42
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;->networkIsDown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    return-void
.end method


# virtual methods
.method public addListener(Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 49
    iget-object v0, p0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public createNetworkAvailableListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/network/OnNetworkStateChangedListener;
    .registers 4

    .line 60
    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver$1;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/server/network/NetworkAvailableReceiver;->notifyAllListeners(Landroid/content/Context;)V

    return-void
.end method
