.class public Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataSdksReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->passDataToSdk(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->onServerError(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onServerError(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 68
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;->passDataToSdk(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private passDataToSdk(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    if-eqz p2, :cond_2b

    .line 25
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string v1, "ConfigPhpURLWithParams"

    const-string v2, ""

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v7, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$1;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    new-instance v8, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;

    invoke-direct {v8, p0, p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver$2;-><init>(Lcom/appsgeyser/sdk/datasdk/DataSdksReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 59
    invoke-static {}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->getInstance()Lcom/appsgeyser/sdk/server/network/NetworkManager;

    move-result-object v3

    sget-object p2, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->CONFIG_PHP:Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;

    .line 60
    invoke-virtual {p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, p1

    .line 59
    invoke-virtual/range {v3 .. v8}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    :cond_2b
    return-void
.end method
