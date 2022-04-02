.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$11;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->attachAutocomplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;)V
    .registers 2

    .line 597
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3

    .line 600
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$11;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    iget-object v0, v0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;->_history:Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;

    if-eqz p1, :cond_b

    .line 602
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 601
    :goto_c
    invoke-virtual {v0, p1}, Lcom/appsgeyser/multiTabApp/storage/BrowsingHistoryStorage;->getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
