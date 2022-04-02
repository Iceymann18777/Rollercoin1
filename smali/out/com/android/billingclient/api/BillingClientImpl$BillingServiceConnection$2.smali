.class Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V
    .registers 2

    .line 1534
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1534
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 11

    .line 1538
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1300(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1539
    :try_start_7
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$1500(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1540
    monitor-exit v0

    return-object v2

    .line 1542
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_f9

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1545
    :try_start_15
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$200(Lcom/android/billingclient/api/BillingClientImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_d1

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x3

    :goto_26
    if-lt v5, v0, :cond_3c

    .line 1551
    :try_start_28
    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1552
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v7

    const-string v8, "subs"

    invoke-interface {v7, v5, v3, v8}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_39

    goto :goto_3d

    :cond_39
    add-int/lit8 v5, v5, -0x1

    goto :goto_26

    :cond_3c
    const/4 v5, 0x0

    .line 1558
    :goto_3d
    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_47

    const/4 v8, 0x1

    goto :goto_48

    :cond_47
    const/4 v8, 0x0

    :goto_48
    invoke-static {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1602(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1559
    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    if-lt v5, v0, :cond_53

    const/4 v8, 0x1

    goto :goto_54

    :cond_53
    const/4 v8, 0x0

    :goto_54
    invoke-static {v7, v8}, Lcom/android/billingclient/api/BillingClientImpl;->access$1702(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    if-ge v5, v0, :cond_60

    const-string v5, "BillingClient"

    const-string v7, "In-app billing API does not support subscription on this device."

    .line 1561
    invoke-static {v5, v7}, Lcom/android/billingclient/util/BillingHelper;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    const/16 v5, 0xa

    :goto_62
    if-lt v5, v0, :cond_78

    .line 1570
    iget-object v7, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v7, v7, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    .line 1571
    invoke-static {v7}, Lcom/android/billingclient/api/BillingClientImpl;->access$300(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v7

    const-string v8, "inapp"

    invoke-interface {v7, v5, v3, v8}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_75

    goto :goto_79

    :cond_75
    add-int/lit8 v5, v5, -0x1

    goto :goto_62

    :cond_78
    const/4 v5, 0x0

    .line 1577
    :goto_79
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    if-lt v5, v4, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x0

    :goto_82
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->access$1802(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1578
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/16 v4, 0x9

    if-lt v5, v4, :cond_8f

    const/4 v4, 0x1

    goto :goto_90

    :cond_8f
    const/4 v4, 0x0

    :goto_90
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->access$1902(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1579
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/16 v4, 0x8

    if-lt v5, v4, :cond_9d

    const/4 v4, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v4, 0x0

    :goto_9e
    invoke-static {v3, v4}, Lcom/android/billingclient/api/BillingClientImpl;->access$2002(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    .line 1580
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v4, 0x6

    if-lt v5, v4, :cond_a9

    goto :goto_aa

    :cond_a9
    const/4 v9, 0x0

    :goto_aa
    invoke-static {v3, v9}, Lcom/android/billingclient/api/BillingClientImpl;->access$2102(Lcom/android/billingclient/api/BillingClientImpl;Z)Z

    if-ge v5, v0, :cond_b6

    const-string v0, "BillingClient"

    const-string v3, "In-app billing API version 3 is not supported on this device."

    .line 1582
    invoke-static {v0, v3}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    if-nez v6, :cond_c1

    .line 1586
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    goto :goto_e7

    .line 1588
    :cond_c1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1589
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_cf} :catch_d0

    goto :goto_e7

    :catch_d0
    move v0, v6

    :catch_d1
    const-string v3, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    .line 1592
    invoke-static {v3, v4}, Lcom/android/billingclient/util/BillingHelper;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v3, v3, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v3, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1595
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v1, v1, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    move v6, v0

    :goto_e7
    if-nez v6, :cond_f1

    .line 1598
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->OK:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_f8

    .line 1600
    :cond_f1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$2;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->API_VERSION_NOT_V3:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    :goto_f8
    return-object v2

    :catchall_f9
    move-exception v1

    .line 1542
    :try_start_fa
    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    goto :goto_fd

    :goto_fc
    throw v1

    :goto_fd
    goto :goto_fc
.end method
