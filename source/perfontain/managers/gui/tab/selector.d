module perfontain.managers.gui.tab.selector;

import
		std,

		perfontain;


// class TabSelector : GUIElement
// {
// 	this(TabWindow p)
// 	{
// 		super(p);
// 	}

// 	override void onPress(Vector2s, bool st)
// 	{
// 		if(st)
// 		{
// 			auto w = cast(TabWindow)parent;
// 			w.onChange(cast(ubyte)w.selectors.countUntil!(a => a is this));
// 		}
// 	}
// }

// final class TextCaptions : GUIElement
// {
// 	this(GUIElement p, string[] names)
// 	{
// 		GUIStaticText[] ts;

// 		foreach(n; names)
// 		{
// 			ts ~= new class GUIStaticText
// 			{
// 				this()
// 				{
// 					super(this.outer, n);

// 					color = colorGray;
// 					flags.captureFocus = true;
// 				}

// 				override void onPress(Vector2s, bool st)
// 				{
// 					if(st)
// 					{
// 						select(cast(ubyte)this.outer.childs[].countUntil!(a => a is this));
// 					}
// 				}
// 			};
// 		}

// 		super(p, ts.fold!((a, b) => a + b.size.x + 5, (a, b) => max(a, b.size.y + 3))(0, 0).expand.Vector2s + 1);

// 		foreach(i, e; ts)
// 		{
// 			if(i)
// 			{
// 				e.moveX(ts[i - 1], POS_ABOVE, 5);
// 			}
// 			else
// 			{
// 				e.pos.x = 3;
// 			}

// 			e.moveY(this, POS_MAX, -1);
// 		}

// 		select(0);
// 	}

// 	override void draw() const
// 	{

// 	}

// 	void delegate(ubyte) onChange;
// private:
// 	mixin publicProperty!(ubyte, `idx`);

// 	inout text(uint n)
// 	{
// 		return cast(inout GUIStaticText)childs[n];
// 	}

// 	void select(ubyte n)
// 	{
// 		{
// 			auto t = text(_idx);

// 			t.color = colorGray;
// 			t.moveY(this, POS_MAX, -1);
// 		}

// 		{
// 			auto t = text(_idx = n);

// 			t.color = colorBlack;
// 			t.moveY(this, POS_MAX, -3);
// 		}

// 		if(onChange)
// 		{
// 			onChange(_idx);
// 		}
// 	}
// }

// final class TextTabs : TabsWindow
// {
// 	this(GUIElement p, string[] names)
// 	{
// 		auto e = new TextCaptions(this, names);

// 		e.onChange = (a)
// 		{
// 			select(a);
// 		};

// 		super(p, cast(ubyte)names.length);

// 		tabs.each!(a => a.pos.y = e.size.y);
// 		toChildSize;

// 		select(0);
// 	}

// 	override inout(GUIElement)[] tabs() inout
// 	{
// 		return childs[1..$];
// 	}
// }
