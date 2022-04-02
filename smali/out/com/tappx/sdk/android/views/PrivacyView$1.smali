.class Lcom/tappx/sdk/android/views/PrivacyView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tappx/sdk/android/views/PrivacyView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tappx/sdk/android/views/PrivacyView;


# direct methods
.method constructor <init>(Lcom/tappx/sdk/android/views/PrivacyView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/sdk/android/views/PrivacyView$1;->a:Lcom/tappx/sdk/android/views/PrivacyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/android/views/PrivacyView$1;->a:Lcom/tappx/sdk/android/views/PrivacyView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tappx/sdk/android/views/PrivacyView;->a(Lcom/tappx/sdk/android/views/PrivacyView;Z)V

    return-void
.end method
