# 网易云信

## NIMSessionViewController

### NIMSessionConfigurator

- NIMSessionInteractorImpl

	- NIMSessionDataSource   

		- NIMSessionDataSourceImpl

			- NIMSession
			- NIMSessionMsgDatasource

				- 插入数据
				- 查找数据
				- 删除数据
				- 下拉加载数据，加载历史数据.                          
// 询问是否有 Provider,如果有 MessageProvider ，就从MessageProvider 获取 NIMMessage 数据如果没有 MessageProvider. 就通过 NIMSDK 获取 NIMMessage 数据

				  询问是否有 Provider
				  
				  如果有 MessageProvider ，就从MessageProvider 获取 NIMMessage 数据
				  
				  如果没有 MessageProvider. 就通过 NIMSDK 获取 NIMMessage 数据
				  -----------------------------------

					- NIMKitMessageProvider

						- 下拉加载数据
						- 是否需要时间戳

					- NIMSDK 

						- 根据NIMSession

	- NIMSessionLayout

	  控制tableView和inputView的布局控制

		- NIMSessionLayoutImpl

			- NIMInputView
			- UITableView
			- UIRefreshControl

		- update：
		- adjustTableView
		- adjustInputView
		- 等方法

	- NIMSessionInteractorDelegate

		- didFetchMessageData(初始数据完成)
		- didRefreshMessageData(刷新数据完成)
		- didPullUpMessageData(上拉数据完成)

	- NIMSessionInteractor

		- 网络接口
		- 界面操作接口
		- 数据接口
		- 排版接口
		- 按钮响应接口
		- 页面状态同步接口

- NIMSessionTableAdapter

	- NIMMessageCellFactory（cell生成器）

		- - (NIMMessageCell *)cellInTable:(UITableView*)tableView
                 forMessageMode:(NIMMessageModel *)model

			- NIMMessageCell

				- NIMSessionMessageContentView(refresh:Model)

					- initSessionMessageContentView

						- customContentOne
						- customContentTwo
						- customContentThree
						- customContentFour
						- customContentFive
						- refresh:NIMMessageModel (更新视图)

					- addContentViewIfNotExist(加载内容视图)

				- 负责基础的UI展示

					- 重试按钮
					- 旋转loading
					- 用户信息
					- 背景色等

	- NIMSessionInteractorImpl

## 父类方法

## 类

## 属性

## 协议

*XMind: ZEN - Trial Version*