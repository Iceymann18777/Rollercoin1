.class public Lcom/google/android/gms/internal/ads/zzaky;
.super Lcom/google/android/gms/internal/ads/zzakv;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakv;-><init>()V

    return-void
.end method


# virtual methods
.method public final setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakv;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x1

    return p1
.end method
