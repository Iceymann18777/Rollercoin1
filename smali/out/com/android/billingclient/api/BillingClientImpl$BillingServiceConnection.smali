.class final Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BillingServiceConnection"
.end annotation


# instance fields
.field private disconnected:Z

.field private final lock:Ljava/lang/Object;

.field private mListener:Lcom/android/billingclient/api/BillingClientStateListener;

.field final synthetic this$0:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V
    .registers 3

    .line 1491
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1487
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1488
    iput-boolean p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->disconnected:Z

    .line 1492
    iput-object p2, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;Lcom/android/billingclient/api/BillingClientImpl$1;)V
    .registers 4

    .line 1486
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;-><init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;
    .registers 1

    .line 1486
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Lcom/android/billingclient/api/BillingClientStateListener;
    .registers 1

    .line 1486
    iget-object p0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Z
    .registers 1

    .line 1486
    iget-boolean p0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->disconnected:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    .line 1486
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method

.method private notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V
    .registers 4

    .line 1515
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance v1, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$1;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$500(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "BillingClient"

    const-string v0, "Billing service connected."

    .line 1530
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 1532
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    new-instance p2, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;

    invoke-direct {p2, p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V

    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;

    invoke-direct {v0, p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;-><init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V

    const-wide/16 v1, 0x7530

    .line 1533
    invoke-static {p1, p2, v1, v2, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$2300(Lcom/android/billingclient/api/BillingClientImpl;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_2d

    .line 1615
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->access$2400(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->notifySetupResult(Lcom/android/billingclient/api/BillingResult;)V

    :cond_2d
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "BillingClient"

    const-string v0, "Billing service disconnected."

    .line 1497
    invoke-static {p1, v0}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 1499
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1500
    iget-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 1501
    :try_start_16
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    if-eqz v0, :cond_1f

    .line 1502
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->mListener:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-interface {v0}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingServiceDisconnected()V

    .line 1504
    :cond_1f
    monitor-exit p1

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v0
.end method
