.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showCloseAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 538
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$400(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V

    .line 539
    sget-object p1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$502(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    .line 540
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$6;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->finish()V

    return-void
.end method
