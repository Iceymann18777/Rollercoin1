.class public interface abstract Lcom/appsgeyser/multiTabApp/controllers/ITabContentController;
.super Ljava/lang/Object;
.source "ITabContentController.java"

# interfaces
.implements Lcom/appsgeyser/multiTabApp/controllers/InjectMainNavigationController;


# virtual methods
.method public abstract createTabContent(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
.end method

.method public abstract showNavigationBars()V
.end method
