.class Lcom/tappx/sdk/android/views/PrivacyView$3;
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
    iput-object p1, p0, Lcom/tappx/sdk/android/views/PrivacyView$3;->a:Lcom/tappx/sdk/android/views/PrivacyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tappx/sdk/android/views/PrivacyView$3;->a:Lcom/tappx/sdk/android/views/PrivacyView;

    invoke-static {p1}, Lcom/tappx/sdk/android/views/PrivacyView;->b(Lcom/tappx/sdk/android/views/PrivacyView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/tappx/sdk/android/views/PrivacyView;->a(Lcom/tappx/sdk/android/views/PrivacyView;Z)V

    return-void
.end method
