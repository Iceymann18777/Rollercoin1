.class public Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadsListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/multiTabApp/DownloadsListActivity;Landroid/view/View;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/DownloadsListActivity_ViewBinding;->target:Lcom/appsgeyser/multiTabApp/DownloadsListActivity;

    .line 25
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0a00ca

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p1, Lcom/appsgeyser/multiTabApp/DownloadsListActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method
