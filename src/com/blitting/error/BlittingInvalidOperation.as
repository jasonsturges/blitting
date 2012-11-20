package com.blitting.error
{

	public class BlittingInvalidOperation extends Error
	{
		include "../core/Version.as";


		//------------------------------
		//  lifecycle
		//------------------------------

		public function BlittingInvalidOperation(message:*="", id:*=0)
		{
			super(message, id);
		}

	}
}
