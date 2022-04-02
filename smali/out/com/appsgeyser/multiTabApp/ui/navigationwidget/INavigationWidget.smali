.class public interface abstract Lcom/appsgeyser/multiTabApp/ui/navigationwidget/INavigationWidget;
.super Ljava/lang/Object;
.source "INavigationWidget.java"


# virtual methods
.method public abstract attachAutocomplete()V
.end method

.method public abstract getCustomIcons()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidgetCustomIcon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNawigationWidgetView()Landroid/view/ViewGroup;
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract setHideOnInternalUrls(Z)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
