.class Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;
.super Ljava/lang/Object;
.source "BillingClientImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;)V
    .registers 2

    .line 1606
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1609
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$1202(Lcom/android/billingclient/api/BillingClientImpl;I)I

    .line 1610
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    iget-object v0, v0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->this$0:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl;->access$302(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 1611
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection$3;->this$1:Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;

    sget-object v1, Lcom/android/billingclient/api/BillingResults;->SERVICE_TIMEOUT:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;->access$2200(Lcom/android/billingclient/api/BillingClientImpl$BillingServiceConnection;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
