.class Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetEntityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;->this$0:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)I
    .registers 7

    .line 98
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tab"

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_34

    const/4 p1, 0x3

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 105
    :cond_34
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 96
    check-cast p1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    check-cast p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;->compare(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)I

    move-result p1

    return p1
.end method
