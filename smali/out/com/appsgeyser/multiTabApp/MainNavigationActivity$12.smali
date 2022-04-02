.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;
.super Ljava/lang/Object;
.source "MainNavigationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->showHttpAuthentication(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/webkit/HttpAuthHandler;)V
    .registers 3

    .line 1191
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1193
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$12;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method
