.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;
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

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;Landroid/view/View;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V
    .registers 7

    .line 1184
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$host:Ljava/lang/String;

    iput-object p5, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$realm:Ljava/lang/String;

    iput-object p6, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 1186
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$v:Landroid/view/View;

    const p2, 0x7f0a0233

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1187
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$v:Landroid/view/View;

    const v0, 0x7f0a0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1188
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$realm:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->setHttpAuthUsernamePassword(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$13;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
