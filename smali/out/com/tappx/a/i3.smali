.class public Lcom/tappx/a/i3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 1
    new-instance v0, Lcom/tappx/sdk/android/views/PrivacyView;

    invoke-direct {v0, p0}, Lcom/tappx/sdk/android/views/PrivacyView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/view/View;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/i3;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/view/View;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/tappx/a/i3;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
