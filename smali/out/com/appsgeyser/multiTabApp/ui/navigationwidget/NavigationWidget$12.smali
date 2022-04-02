.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$12;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;


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

    .line 606
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$12;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 2

    .line 606
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/NavigationWidget$12;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "url"

    .line 609
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 610
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
