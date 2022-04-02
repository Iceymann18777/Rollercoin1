.class Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;
.super Ljava/lang/Object;
.source "TabsController.java"

# interfaces
.implements Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/controllers/TabsController;->initWithTabs(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;

.field final synthetic val$tagPanel:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/TabsController;Lcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;->val$tagPanel:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOfferWallEnabled(Z)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;->this$0:Lcom/appsgeyser/multiTabApp/controllers/TabsController;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/TabsController$1;->val$tagPanel:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {v0, p1, v1}, Lcom/appsgeyser/multiTabApp/controllers/TabsController;->access$000(Lcom/appsgeyser/multiTabApp/controllers/TabsController;ZLcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method
