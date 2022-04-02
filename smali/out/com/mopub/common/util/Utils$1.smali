.class final Lcom/mopub/common/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/util/Utils;->createHideNavigationListener(Landroid/view/View;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/mopub/common/util/Utils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 2

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_9

    .line 82
    iget-object p1, p0, Lcom/mopub/common/util/Utils$1;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/mopub/common/util/Utils;->hideNavigation(Landroid/view/View;)V

    :cond_9
    return-void
.end method
