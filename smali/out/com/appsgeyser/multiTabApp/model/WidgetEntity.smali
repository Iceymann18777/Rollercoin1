.class public Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
.super Ljava/lang/Object;
.source "WidgetEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
    }
.end annotation


# instance fields
.field private _height:I

.field private _id:Ljava/lang/String;

.field private _injectJS:Ljava/lang/String;

.field private _injectScripts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation
.end field

.field private _link:Ljava/lang/String;

.field private _loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

.field private _name:Ljava/lang/String;

.field private _showAsTab:Z

.field private _tabIcon:Ljava/lang/String;

.field private _tabId:Ljava/lang/String;

.field private _tabName:Ljava/lang/String;

.field private _tabType:Ljava/lang/String;

.field private _updateTime:I

.field private _userAgent:Ljava/lang/String;

.field private _width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    .line 23
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    .line 24
    iput v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return-void
.end method


# virtual methods
.method public addScript(Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    .line 119
    :cond_b
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    return v0
.end method

.method public getHostFromLink()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectJS()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectScripts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectScripts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadingCurtainType()Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathFromLink()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-object v0
.end method

.method public getTabType()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    return v0
.end method

.method public isShowAsTab()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return v0
.end method

.method public setHeight(I)V
    .registers 2

    .line 167
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_height:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_id:Ljava/lang/String;

    return-void
.end method

.method public setInjectJS(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_injectJS:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_link:Ljava/lang/String;

    return-void
.end method

.method public setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_loadingCurtainType:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_name:Ljava/lang/String;

    return-void
.end method

.method public setShowAsTab(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_showAsTab:Z

    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabId:Ljava/lang/String;

    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .registers 2

    .line 183
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-void
.end method

.method public setTabType(Ljava/lang/String;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_tabType:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(I)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_updateTime:I

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_userAgent:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    .line 159
    iput p1, p0, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->_width:I

    return-void
.end method
