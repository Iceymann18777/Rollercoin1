.class public Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;
.super Ljava/lang/Object;
.source "MenuStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private _iconResourceId:I

.field private _itemId:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->setItemId(I)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->setIconResourceId(I)V

    return-void
.end method


# virtual methods
.method public getIconResourceId()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->_iconResourceId:I

    return v0
.end method

.method public getItemId()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->_itemId:I

    return v0
.end method

.method public setIconResourceId(I)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->_iconResourceId:I

    return-void
.end method

.method public setItemId(I)V
    .registers 2

    .line 44
    iput p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuStructure$Item;->_itemId:I

    return-void
.end method
